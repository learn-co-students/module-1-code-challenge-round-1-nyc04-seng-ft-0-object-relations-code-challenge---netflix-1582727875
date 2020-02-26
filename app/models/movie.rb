require_relative 'review.rb'
require_relative 'viewer.rb'

class Movie
  attr_accessor :title
  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select{|reviews|reviews.movie == self}
  end

  def reviewers
    reviews = Review.all.select{|reviews|reviews.movie == self}
    reviews.map{|reviews|reviews.viewer}
  end

  def average_rating
    reviewed = Review.all.select{|reviews|reviews.movie == self}
    ((reviewed.sum(&:rating)).to_f/reviewed.length).to_f
  end

  def self.highest_rated
    highest = @@all.max_by{|movies|movies.average_rating}
    "The highest rated movie is #{highest.title}."
  end

  def self.all
    @@all
  end

end
