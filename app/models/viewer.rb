class Viewer
  attr_accessor :username, :rating
  attr_reader :movie

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end
  
  def rate_movie(movie, rating)
    # if there isn't yet a review with this user and movie, create a new one
    # if there IS a review with this user and movie, update the rating
    if !reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      self.reviews.select{|review| review.movie == movie}.rating = rating
    end
  end

end
