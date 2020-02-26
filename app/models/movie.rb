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


  def reviews #returns an array of all the reviews instances for this movie 
    Review.all.select do |reviews|
      reviews.movie == self 
    end 
  end 

  def reviewers 
    reviews.map do |reviews|
      reviews.viewer
    end 
  end 

  def average_rating
  ratings = reviews.sum(&:rating)
  average = ratings.to_f / reviews.count.to_f
  end 


  def self.highest_rated #This finds the highest average
  reviews =  @@all.map do|reviews|
          reviews
  end 
  reviews.compact

  review_number = 0 
  movie = nil

  reviews.select do |x|
    if x.average_rating > review_number
      review_number = x.average_rating
      movie = x 
    end 
  end 

  movie 
  end  
 
def self.highest_rated_test
  highest = @@all.select do |x|
    x.max_by do |x|

    x.reviews.sum(&:rating) > x.reviews.count
    end 
  end 
  highest 
end 


end
