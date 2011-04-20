unless String.instance_methods.include? 'singularize'
  class String
    def singularize
      self.gsub(/e?s\Z/, '')
    end
  end
end

