# This won't be necessary once rspec-rails 3.5.0 and Rails 5 will be released,
# see https://github.com/rails/rails-controller-testing#rspec

RSpec.configure do |config|
  [:controller, :view, :request].each do |type|
    config.include ::Rails::Controller::Testing::TestProcess, :type => type
    config.include ::Rails::Controller::Testing::TemplateAssertions, :type => type
    config.include ::Rails::Controller::Testing::Integration, :type => type
  end
end
