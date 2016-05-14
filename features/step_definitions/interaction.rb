When(/^I ask for a Ruby gem$/) do
  fill_in('Gem name', :with => 'simple_token_authentication')
  click_button 'Analyse'
end
