class Viewer
  attr_accessor :username,:reviews , :rating
  attr_reader :movie

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews   # returns all the review instance that has viewer
    Review.all.select do | x |
      x.viewer == self
    end
  end
  
 def reviewed_movies   # returns all the movies instance the viewer has reviewed
  self.reviews.map do |x|
  x.movie
  end
end

def reviewed_movies?(movie)
  if  self.reviewed_movies.include?(movie)
    true
  else
    false
  end
end


def rate_movie (movie,rating)
  if self.reviewed_movies?(movie) == false
    Review.new(self,movie,rating)
  else
    self.reviews.each do | x |
      if x.movie.title == movie.title
        x.movie.rating = rating
      end
    end
    

  end
end
      




end
