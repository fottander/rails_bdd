When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end
