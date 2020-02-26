# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tropic = Movie.new("Tropic Thunder")
guns = Movie.new("John Wick")
eric = Viewer.new("Eric")
john = Viewer.new("John")
scathing = Review.new(eric, tropic, 5)
tops = Review.new(john, guns, 8)
good = Review.new(eric, guns, 7)

p eric.reviewed_movies
p guns.reviewers
# p scathing.movie


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #

0
