module Howcast; end

def require_local(suffix)
  require(File.expand_path(File.join(File.dirname(__FILE__), suffix)))
end

require_local('howcast/client')
require_local('howcast/errors')