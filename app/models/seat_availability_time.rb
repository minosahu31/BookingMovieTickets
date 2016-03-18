class SeatAvailabilityTime < ActiveRecord::Base
	belongs_to :available_seat
	belongs_to :timing
end
