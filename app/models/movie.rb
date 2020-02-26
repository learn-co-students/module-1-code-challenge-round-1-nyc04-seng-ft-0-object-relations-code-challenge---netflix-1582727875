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

  # returns the `Movie`'s title
  def title
    @title
  end

  # returns an array of all the `Movie` instances that have been initialized
  def self.all
    @@all
  end

end
