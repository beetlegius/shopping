FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyText"
    body "MyText"
    price "9.99"
    promotional_price "9.99"
    brand nil
    category nil
    slug "MyString"
  end
end
