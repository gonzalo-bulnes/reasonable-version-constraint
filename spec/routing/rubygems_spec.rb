require 'rails_helper'

describe DependenciesController do
  describe 'routing', protected: true do

    it { expect(get: '/').to route_to 'dependencies#new' }
    it { expect(post: '/rubygems', params: { name: 'simple_token_authentication' }).to route_to(
           controller: 'dependencies',
           action: 'create' )
    }
    it { expect(get: '/rubygems/simple_token_authentication').to route_to(
           controller: 'dependencies',
           action: 'show',
           dependency_name: 'simple_token_authentication' )
    }
  end
end
