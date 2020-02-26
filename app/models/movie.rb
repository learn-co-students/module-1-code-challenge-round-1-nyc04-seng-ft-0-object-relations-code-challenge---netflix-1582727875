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
    self.reviews.map{|review| review.viewer}
  end

  def review_scores
    self.reviews.map{|review| review.rating}
  end

  def average_rating
    rating_sum = self.review_scores.inject(0.0){|sum, review_score| sum + review_score}
    rating_sum/self.review_scores.length
  end

  def highest_review
    self.review_scores.max{|score1,score2| score1 <=> score2}
  end

  def self.all_ratings
    @@all.map{|movie| movie.average_rating}
  end

  def self.highest_rated
    @@all.each do |movie|
      movie.highest_review
#for each movie, check the highest review and compare it to the next review. if it is higher, store it as the current highest review then return the movie instance
    end

  end

end
