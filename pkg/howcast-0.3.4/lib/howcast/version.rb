module Howcast #:nodoc:
  module Version #:nodoc:
    MAJOR = 0
    MINOR = 3
    TINY  = 4

    STRING = [MAJOR, MINOR, TINY].join('.')
    class << self
      # Returns X.Y.Z formatted version string
      def to_version
        "#{MAJOR}.#{MINOR}.#{TINY}"
      end

      # Returns X-Y-Z formatted version name
      def to_name
        "#{MAJOR}_#{MINOR}_#{TINY}"
      end
    end
  end
end
