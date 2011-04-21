# utility modules for models (eg: video, marker, etc)

module WatchAttrAccessors
  def attr_accessor(*args)
    super(*args)
    @attr_accessors ||= []
    @attr_accessors += args
  end

  def attr_accessors
    @attr_accessors || []
  end
end

module XmlMethods
  def to_doc options = { }
    doc  = Nokogiri::XML::Document.new
    node = Nokogiri::XML::Node.new(self.class.to_s.sub(/([a-z]+::)+/i, '').downcase, doc)
    root = doc.add_child node
    self.class.attr_accessors.each do |attr|
      node  = Nokogiri::XML::Node.new("#{attr}", doc)
      value = self.send(attr)
      if value.instance_of? String
        value = inflect(attr, value) if respond_to? :inflect
        node.add_child value.to_s
        root.add_child node
      elsif value.respond_to? :to_doc
        node = value.to_doc.root
        root.add_child node
      elsif value.instance_of? Array
        value.each do |v|
          if v.respond_to? :to_doc
            node.add_child v.to_doc.root
          else
            attr  = "#{attr}".singularize
            v     = inflect(attr, v) if respond_to? :inflect
            child = Nokogiri::XML::Node.new(attr, doc)
            child.add_child v.to_s
            node.add_child child
          end
        end
        root.add_child node
      end
    end
    doc
  end
  
  def to_xml options = { }
    to_doc(options).root.to_xml
  end
end
