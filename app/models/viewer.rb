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
    Review.all.select {|reviews| reviews.viewer == self}
  end

  def reviewed_movies
    reviews.map {|reviews| reviews.movie}
  end
  
  def reviewed_movie?(movie)
    if reviewed_movies.include?(movie)
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    @rating = rating
    if self.reviewed_movie?(movie) == false
      Review.new(self, movie, rating)
    elsif self.reviewed_movie?(movie)
      reviews.find do |reviews| reviews.movie == movie
        reviews.rating = rating
      end
  end
end

end
