require 'spec_helper'

require 'ruby_gems/client'

module RubyGems
  describe Client, protected: true do

    let(:rubygems) { Client.new }

    it { expect(rubygems).to respond_to :get_versions }

    describe '#get_versions' do

      context 'with an existing gem name as argument' do

        let(:gem_name) { 'simple_token_authentication' }

        it 'returns an array of version numbers' do
          VCR.use_cassette("versions") do
            versions = rubygems.get_versions(gem_name)
            expect(versions).to be_kind_of Array
            expect(versions).to include '1.10.1'
            expect(versions).to include '1.11.0'
          end
        end
      end

      context 'with an inexisting gem name as argument' do

        let(:gem_name) { 'inexisting' }

        it 'raises a Client::RubyGemNotFoundError' do
          VCR.use_cassette("versions_404_error") do
            expect{ rubygems.get_versions(gem_name) }.to raise_error Client::RubyGemNotFoundError
          end
        end
      end
    end
  end
end
