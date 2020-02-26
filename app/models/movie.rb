class Movie
	attr_accessor :title

	@@all = []
	def self.all
		@@all
	end

	def initialize(title)
		@title = title
		@@all.push(self)
	end

	def reviews
		Review.all.select{|r| r.movie == self}
	end

	def reviewers
		self.reviews.map{|r| r.viewer}
	end

	def average_rating
		self.reviews.sum{|r| r.rating} / self.reviews.length
	end

	def self.highest_rated
		self.all.max_by{|m| m.average_rating}
	end

end
