FactoryGirl.define do
  factory :coupon do
    code "MyString"
    discount "9.99"
    valid_until "2017-02-10"
  end
end
