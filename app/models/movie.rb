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
		if self.reviews.length > 0
			self.reviews.sum{|r| r.rating} / self.reviews.length
		else
			# Note: application logic should not call Movie#average_rating 
			# if no reviews exist, but if it does, 
			# returning a zero here prevents a "division by zero" error 
			# in this and the following method.

			# In the view/presentation layer, movies with average ratings of
			# zero should be checked to see if any reviews actually exist
			# and if there are no reviews, don't display this value to the user.
			0.0
		end
	end

	def self.highest_rated
		self.all.max_by{|m| m.average_rating}
	end

end
