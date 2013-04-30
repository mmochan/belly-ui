class Hammock < ActiveRecord::Base
	belongs_to :reservations
  attr_accessible :booking_id, :checkin, :checkout, :name
end
