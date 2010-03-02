module Howcast; end

%w(howcast/client howcast/errors howcast/logging).each do |dependency|
  require(File.expand_path(File.join(File.dirname(__FILE__), dependency)))
end

module Howcast
  include Logging
end
