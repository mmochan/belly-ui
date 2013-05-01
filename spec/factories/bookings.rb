# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :booking do
    salutation "MyString"
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    mobile "MyString"
    address "MyText"
    city "MyString"
    postcode "MyString"
    state "MyString"
    special_requests "MyText"
  end
end
