class AvailableSeat < ActiveRecord::Base
	has_many :seat_availability_times
	has_many :timings, :through => :seat_availability_times 
end
