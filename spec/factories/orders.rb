FactoryGirl.define do
  factory :order do
    status "MyString"
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    city "MyString"
    zip_code "MyString"
    phone "MyString"
    items_count 1
    coupon nil
  end
end
