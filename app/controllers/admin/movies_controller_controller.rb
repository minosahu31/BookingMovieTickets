class Admin::MoviesControllerController < ApplicationController

	def new
		@movie = Movie.new 
		@theaters = Theater.all
	end

	def create
		@movie = Movie.new(movie_params)
		if @movie.save
			redirect_to root_path
		else
			render "new"
		end	
	end

	def delete
		@movies = Movie.all
	end

	def destroy
		@movie = Movie.find(params[:id])
	end

	private

		def movie_params
			params.require(:movie).permit(:title, :director)
		end

		def find_movie

		end

end

