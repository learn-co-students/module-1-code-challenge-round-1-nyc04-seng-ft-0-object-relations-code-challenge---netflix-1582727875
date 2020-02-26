class Movie
  attr_accessor :title,:review,:rating
  attr_reader :viewer

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

def title
  @title
end

  def reviews   # returns all the review instance of that movie
    Review.all.select do |x|
    x.movie == self
    end
  end

  def reviewers     # takes the review instace of that movie and returns the viewrs
    self.reviews.map do | x|
      x.viewer
    end

def average_rating
  helper = []
  helper = self.reviews.map do |x|
    x.rating
  end
  helper.sum / helper.size
end

def self.highest_rated
  helper = []
    helper = @@all.each do | x |
      x.average_rating
    end
  @@all.select do | x |
    x.average_rating == helper.max
  end
end






  end










end
