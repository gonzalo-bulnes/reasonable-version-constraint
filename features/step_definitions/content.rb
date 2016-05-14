Then(/^I see a landing page$/) do
  expect(page).to have_content('Reasonable Version Constraint')
end

Then(/^I see a rubygem page$/) do
  expect(page).to have_content('Rubygems.org')
end

Then(/^I see a version constraint recommendation$/) do
  expect(page).to have_content('Recommended version constraint:')
end

Then(/^I see an assesment of the gem versionning scheme$/) do
  expect(page).to have_content('semantic versioning')
end

Then(/^I see a summary of the risks associated with the recommended verion constraint$/) do
  expect(page).to have_content('Risks')
end

Then(/^I see a summary of the benefits of the recommended verion constraint$/) do
  expect(page).to have_content('Benefits')
end
