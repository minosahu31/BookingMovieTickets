class BookingsController < ApplicationController
	before_action :authenticate_customer!
	
	def index
		#raise params.inspect
		#@theater = Theater.find(params[:id]) 
		@timings = Timing.all 
	end

	def show
		@timing = Timing.find(params[:id])
		@available_seats = @timing.available_seats
	end

	def selected
	end

	def book_ticket
		
	end
end
