FactoryGirl.define do
  factory :comment do
    email "MyEmail"
    comment "MyText"
    article 
  end
end
