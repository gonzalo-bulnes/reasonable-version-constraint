Then(/^I see a landing page$/) do
  expect(page).to have_content('Reasonable Version Constraint')
end

