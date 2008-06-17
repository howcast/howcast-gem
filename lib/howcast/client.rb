# Used to query the Howcast REST API.
class Howcast::Client
end

require_local('howcast/client/base.rb')
require_local('howcast/client/video.rb')
require_local('howcast/client/guide.rb')
require_local('howcast/client/search.rb')
