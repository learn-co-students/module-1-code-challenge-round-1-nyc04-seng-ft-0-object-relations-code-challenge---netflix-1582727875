class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.select do |reviews|
      reviews.viewer == self 
    end 
  end 

  def reviewed_movies
    reviews.map do |reviews|
      reviews.movie 
    end 
  end 


  def reviewed_movie?(movie) #movie instance, returns true if viewer has watched it
      reviewed_movies.include?(movie)
  end 

  def movie_rate_changer(movie, rating)
    if reviewed_movies.include?(movie)
    x = nil 
    x = reviews.find do |reviews|
        reviews.movie == movie 
        end 
    x.rating = rating 
    x
    end 
  end 


  def create_review(movie,rating)
    Review.new(self, movie, rating)
  end 


  def rate_movie(movie,rating)
    movie_rate_changer(movie,rating) || create_review(movie,rating)
  end 





end
