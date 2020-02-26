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
    Review.all.select { |rev| rev.movie == self}
  end

  def reviewers
    reviews.map { |rev| rev.viewer}
  end

  def average_rating
    reviews.map { |rev| rev.rating}.sum/reviews.length
  end

  def self.highest_rated
    high = self.all.sort_by { |mov| mov.average_rating}
    high[-1]
  end

end
