class Timing < ActiveRecord::Base
	has_many :seat_availability_times
	has_many :available_seats, :through => :seat_availability_times
end
