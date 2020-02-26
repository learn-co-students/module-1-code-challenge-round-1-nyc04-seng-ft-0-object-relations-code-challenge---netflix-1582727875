require_relative 'review.rb'
require_relative 'movie.rb'

class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select{|reviews|reviews.viewer == self} #== self
  end

  def reviewed_movies
    reviewed = Review.all.select{|reviews|reviews.viewer == self}
    reviewed.map{|reviews| "#{self.username} has reviewed #{reviews.movie.title}."}
  end

  def reviewed_movie?(movie_instance)
    reviewed = Review.all.select{|reviews|reviews.viewer == self}
    reviewed.find{|reviews|reviews.movie == movie_instance} ? true : false
  end

  def rate_movie(movie_instance, rating)
    if reviewed_movie?(movie_instance)
      reviewed = Review.all.select{|reviews|reviews.viewer == self}
      review = reviewed.find{|reviews|reviews.movie == movie_instance}
      review.rating = rating
    else
      Review.new(self, movie_instance, rating)
    end
  end

  def self.all
    @@all
  end
  
end
