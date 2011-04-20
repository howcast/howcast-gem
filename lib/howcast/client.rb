# Used to query the Howcast REST API.
class Howcast::Client
end

%w(client/utils client/base client/video client/search client/category client/marker client/user client/homepage client/playlist client/type).each do |dependency|
  require(File.expand_path(File.join(File.dirname(__FILE__), dependency)))
end
