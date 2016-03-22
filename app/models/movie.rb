class Movie < ActiveRecord::Base
	validates :title, :director, :presence => true 
	has_many :movie_theaters
	has_many :theaters, :through => :movie_theaters
end
