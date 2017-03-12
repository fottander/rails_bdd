FactoryGirl.define do
  factory :comment do
    email ""
    comment "MyText"
    article nil
  end
end
