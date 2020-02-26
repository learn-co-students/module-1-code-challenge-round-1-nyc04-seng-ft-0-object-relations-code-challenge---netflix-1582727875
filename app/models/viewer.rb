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

  # returns the Viewer's username
  def username
    @username
  end

  # returns an array of all the Viewer instances that have been initialized
  def self.all
    @@all
  end

  # returns an array of `Review` instances associated with the `Viewer` instance
  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  # returns an array of `Movie` instances reviewed by the `Viewer` instance
  def reviewed_movies
    reviews.select {|review| review.movie}
  end

end
