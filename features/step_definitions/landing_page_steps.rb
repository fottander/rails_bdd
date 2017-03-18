When(/^I am on the landing page$/) do
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^the following article exists$/) do |table|
  table.hashes.each do |hash|
    Article.create(hash)
  end
end

Then(/^I should see "([^"]*)" link$/) do |link|
  expect(page).to have_link link
end
