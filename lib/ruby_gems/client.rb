require 'json'
require 'net/http'
require 'uri'

require 'ruby_gems/client/errors'

module RubyGems

  # Retrives data from the Rubygems.org API
  class Client

    # Fetch data about a gem versions
    #
    # gem_name - String
    #
    # Returns an Array of version numbers or raises Client::RubyGemNotFound error.
    def get_versions(gem_name)
      uri = URI("https://rubygems.org/api/v1/versions/#{gem_name}.json")
      response = Net::HTTP.get_response(uri)

      case response.code
      when '200'
        versions = JSON.parse(response.body.to_s)
      when '404'
        raise RubyGemNotFoundError, "The rubygem could not be found: #{gem_name} - only gems hosted by Rubygems.org are supported."
      else
        raise UnexpectedResponseError, "This client can't handle: #{responde.code} - #{response.message}"
      end

      versions.inject([]) do |version_numbers, version|
        version_numbers << version.fetch('number')
      end

    end
  end
end
