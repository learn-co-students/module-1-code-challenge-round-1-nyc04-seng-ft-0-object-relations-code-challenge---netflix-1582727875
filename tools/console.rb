# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

a = Movie.new("The Avengers")
b = Movie.new("The Avengers 2")
c = Movie.new("The Avengers 3")

me = Viewer.new("Me")
you = Viewer.new("You")
us = Viewer.new("Us")

r = Review.new(me, a, 8)
e = Review.new(you, a, 9)
v = Review.new(us, a, 6)
i = Review.new(me, b, 9)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
