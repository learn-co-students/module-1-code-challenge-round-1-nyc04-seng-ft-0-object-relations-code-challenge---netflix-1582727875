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
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|reviews| reviews.viewer}
  end

  def average_rating
    reviews.sum {|review, sum| review.rating}.to_f / reviews.length.to_f
  end

  def self.highest_rated
    Movie.all.max {|m| m.average_rating}
  end

end
