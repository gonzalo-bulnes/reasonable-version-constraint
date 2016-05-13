require 'json'
require 'net/http'
require 'uri'

module RubyGems
  class Client

    def get_versions(gem_name)
      uri = URI("https://rubygems.org/api/v1/versions/#{gem_name}.json")
      response = JSON.parse(Net::HTTP.get(uri))

      response.inject([]) do |version_numbers, version|
        version_numbers << version.fetch('number')
      end

    end
  end
end

