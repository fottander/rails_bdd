When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

Then(/^I should be on "([^"]*)" article page$/) do |article_title|
  article = Article.where(title: article_title).first
  expect(page.current_path).to eq article_path(article)
end
