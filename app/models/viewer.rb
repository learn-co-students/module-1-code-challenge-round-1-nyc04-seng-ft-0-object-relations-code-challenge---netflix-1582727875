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
  
end
