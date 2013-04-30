# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hammock do
    name "MyString"
    booking_id 1
    checkin "2013-04-30"
    checkout "2013-04-30"
  end
end
