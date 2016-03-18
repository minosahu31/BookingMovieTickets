class BookingsController < ApplicationController
	before_action :authenticate_customer!
	
	def index
		@timings = Timing.all 
	end

	def show
		@timing = Timing.find(params[:id])
	end

end
