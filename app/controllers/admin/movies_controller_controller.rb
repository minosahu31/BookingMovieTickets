class Admin::MoviesControllerController < ApplicationController

	before_action :require_admin


	def require_admin
		unless current_customer.role == "admin"	
			redirect_to root_path
		end
	end	

	def new
		@movie = Movie.new 
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to root_path
		else
			render "new"
		end	
	end

end

