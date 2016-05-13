require 'json'
require 'net/http'
require 'uri'

module RubyGems

  class RubyGemNotFoundError < RuntimeError

    def initialize(gem_name)
      @gem_name = gem_name
    end

    def to_s
      "The rubygem could not be found: #{@gem_name} - only gems hosted at Rubygems.org are supported."
    end
  end

  class Client

    UnexpectedResponseError = Class.new(RuntimeError)

    def get_versions(gem_name)
      uri = URI("https://rubygems.org/api/v1/versions/#{gem_name}.json")
      response = Net::HTTP.get_response(uri)

      case response.code
      when '200'
        versions = JSON.parse(response.body.to_s)
      when '404'
        raise RubyGemNotFoundError.new(gem_name)
      else
        raise UnexpectedResponseError.new
      end

      versions.inject([]) do |version_numbers, version|
        version_numbers << version.fetch('number')
      end

    end
  end
end

