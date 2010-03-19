# Used to query the Howcast REST API.
class Howcast::Client
end

%w(client/base client/video client/search client/category client/marker client/user client/homepage).each do |dependency|
  require(File.expand_path(File.join(File.dirname(__FILE__), dependency)))
end
