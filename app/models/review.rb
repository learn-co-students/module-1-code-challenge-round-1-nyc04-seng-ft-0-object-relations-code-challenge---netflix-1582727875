class Review

  attr_accessor :viewer, :rating
  attr_reader :movie

  @@all = []

  def initialize(viewer, movie, rating)
    @viewer = viewer
    @movie = movie
    @rating = rating.to_f
    self.class.all << self
  end

  def self.all
    @@all
  end

  
end

