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
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    self.reviews.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
    if movie.reviewers.find{|reviewer| reviewer == self}
      return true
  else
      return false
    end
  end

 # def rate_movie(movie, rating)
   # if !self.reviewed_movie?
   #   new_review = Review.new(self, movie, rating)
   # else
    #  existing_review = self.reviewed_movies.find
#migrate to review in question and use the current review instance review.rating to input new review

  #end
  
end
