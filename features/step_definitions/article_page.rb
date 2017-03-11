Given(/^the following article exists on our site$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end
