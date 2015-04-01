Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link("New Game")
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content "What's your name?"
end

When(/^I fill in first name with "([^"]*)"$/) do |arg1|
  fill_in('First Name', :with => 'Paul')
end

When(/^I fill in surname with "([^"]*)"$/) do |arg1|
fill_in('Last Name', :with => 'Wallis')
end
