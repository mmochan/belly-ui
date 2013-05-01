class Booking < ActiveRecord::Base
  attr_accessible :address, :city, :email, :first_name, :last_name, :mobile, :postcode, :salutation, :special_requests, :state
end
