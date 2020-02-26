class Viewer
	attr_accessor :username

	@@all = []
	def self.all
		@@all
	end

	def initialize(username)
		@username = username
		@@all.push(self)
	end

	def reviews
		Review.all.select{|r| r.viewer == self}
	end

	def reviewed_movies
		self.reviews.map{|r| r.movie}
	end

	def reviewed_movie?(movie)
		self.reviewed_movies.include?(movie)
	end

	def rate_movie(movie, rating)
		if reviewed_movie?(movie)
			# already reviewed, update the rating
			my_review = Review.all.find{|r| r.viewer == self && r.movie == movie}
			my_review.rating = rating.to_f		# TODO: move the to_f into an instance variable "setter" method
			
			my_review		# returns the instance
		else 
			# not yet reviewed, add review
			Review.new(self, movie, rating)
		end
	end



end
