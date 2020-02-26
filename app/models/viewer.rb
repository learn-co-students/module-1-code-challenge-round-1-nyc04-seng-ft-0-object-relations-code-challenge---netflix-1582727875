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
    Review.all.select { |rev| rev.viewer == self}
  end

  def reviewed_movies
    reviews.map { |rev| rev.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movies = nil
      Review.new(self, movie, rating)
    else
      
  end
  
end
