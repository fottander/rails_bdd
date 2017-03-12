Given(/^the following article exists on our site$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end

Given(/^I visit the "([^"]*)" article page$/) do |article_title|
  article = Article.where(title: article_title).first
  visit article_path(article)
end

Then(/^I should see "([^"]*)" and publishing date "([^"]*)"$/) do |content, date|
  expect(page).to have_content and date
end
