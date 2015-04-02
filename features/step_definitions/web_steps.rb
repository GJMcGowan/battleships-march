Given(/^I am on the homepage$/) do
  visit ('/')
end

When(/^I follow "([^"]*)" link$/) do |arg1|
  click_link(arg1)
end

Then(/^I should be on the registration page$/) do
  visit ('/registration')
end

Given(/^I am on the registration page$/) do
  visit ('/registration')
end

When(/^I fill in the form "([^"]*)" with "([^"]*)"$/) do |form_name, content|
  fill_in(form_name, :with => content)
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I am taken to the game page$/) do
  visit ('/game')
end

When(/^I fill in everything needed to start a game$/) do
  step('I fill in the form "Name" with "Paul Wallis"')
  step('I fill in the form "Board Size" with "9"')
  step('I fill in the form "How many pieces" with "1"')
end
