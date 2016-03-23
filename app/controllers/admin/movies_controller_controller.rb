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

	def index
		@theaters = Theater.all
	end

	def show
		@theater = Theater.find(params[:id])
		@movies = @theater.movies
	end

	def edit
		@movie = Movie.find(params[:id])
	end

	def update
		#raise  params.inspect
		@movie = Movie.find(params[:movie_id])
		if @movie.update(movie_params)
			redirect_to admin_movies_controller_path(@movie)
			flash[:notice] = "Updated successfully"
		else
			render edit_admin_movies_controller_path(@movie)	
			flash[:notice] = "Sorry update failed "
		end	
	end

	def delete
		@movies = Movie.all
	end

	def destroy
		@movie = Movie.find(params[:id])
	   # flash[:notice] = @movie
		@movie.destroy
			redirect_to admin_movies_controller_delete_path
	end

	private

		def movie_params
			params.require(:movie).permit(:title, :director)
		end

		def find_movie

		end

end

