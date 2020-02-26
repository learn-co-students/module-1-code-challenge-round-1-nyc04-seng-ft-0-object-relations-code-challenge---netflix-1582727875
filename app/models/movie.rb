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

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.map{|review| review.viewer}
  end

  def average_rating
  #sum of all ratings / number of ratings(self.reviews.length?)
    rating_sum = reviews.reduce(0){|total, review| total + review.rating}
    rating_sum/self.reviews.length
  end

  def self.highest_rated
    @@all.max_by{|movie| movie.average_rating}
  end

end
