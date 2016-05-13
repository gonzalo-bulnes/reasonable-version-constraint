module RubyGems
  class Client

    class RubyGemNotFoundError < RuntimeError

      def initialize(gem_name)
        @gem_name = gem_name
      end

      def to_s
        "The rubygem could not be found: #{@gem_name} - only gems hosted at Rubygems.org are supported."
      end
    end

    # Signifies the client has reached its limits
    UnexpectedResponseError = Class.new(RuntimeError)

  end
end

