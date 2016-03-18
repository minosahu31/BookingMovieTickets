class BookingsController < ApplicationController
	before_action :authenticate_customer!
	
	def show
		@timings = Timing.all 
	end

end
