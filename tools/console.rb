# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

scream = Movie.new("Scream")
friday = Movie.new("Friday")
jaws = Movie.new("Jaws")

ringo = Viewer.new("Ringo")
john = Viewer.new("John")
george = Viewer.new("George")
paul = Viewer.new("Paul")

review1 = Review.new(ringo, jaws, 5)
review2 = Review.new(ringo, scream, 7)
review3 = Review.new(paul, scream, 8)
review4 = Review.new(george, friday,50)
review6 = Review.new(george, jaws, 1)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
