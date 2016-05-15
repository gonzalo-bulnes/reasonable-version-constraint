FactoryGirl.define do

  factory :dependency do
    name 'simple_token_authentication'
  end

  factory :invalid_dependency, class: :dependency
end
