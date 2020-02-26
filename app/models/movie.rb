class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  # returns the `Movie`'s title
  def title
    @title
  end

  # returns an array of all the `Movie` instances that have been initialized
  def self.all
    @@all
  end

  # returns an array of all the `Review` instances for the `Movie`.
  def reviews
    Review.all.select {|review| review.movie == self}
  end

  # returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def reviewers
    reviews.select {|review| review.viewer}
  end
  
  # returns the average of all ratings for the `Movie` instance
  # to average ratings, add all ratings together and divide by the 
  # total number of ratings
  def average_rating
    movie_rating = reviews.map {|review| review.rating}.sum
    movie_reviews = reviews.select {|review| review}.count
    (movie_rating / movie_reviews) 
  end

  # returns the `Movie` instance with the highest average rating.
  def self.highest_rated
    # pull the movie with the highest rating from average_rating and return the value 
    Movie.all.map {|movie| movie.average_rating && (movie.average_rating.max)}
  end

end
