module RubyGems
  class Client

    # The gem is not hosted by Rubygems.org
    RubyGemNotFoundError = Class.new(RuntimeError)

    # Signifies the client has reached its limits
    UnexpectedResponseError = Class.new(RuntimeError)

  end
end
