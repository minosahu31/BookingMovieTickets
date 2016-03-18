class TheatersController < ApplicationController
	before_action :authenticate_customer!, except: [:show]

	def show
		@movie = Movie.find(params[:id])
		@theaters = @movie.theaters
	end

end
