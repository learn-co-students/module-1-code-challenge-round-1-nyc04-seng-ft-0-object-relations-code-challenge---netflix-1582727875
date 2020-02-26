# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# MOVIES
evil_dead = Movie.new("Evil Dead")
waynes_world = Movie.new("Waynes World")
dumb_dumber = Movie.new("Dumb and Dumber")

# VIEWERS
viewer1 = Viewer.new("Viewer One")
viewer2 = Viewer.new("Viewer Two")
viewer3 = Viewer.new("Viewer Three")

# REVIEWS
review1 = Review.new(viewer1, waynes_world, 5)
review2 = Review.new(viewer1, evil_dead, 5)
review3 = Review.new(viewer2, waynes_world, 5)
review4 = Review.new(viewer2, dumb_dumber, 5)
review5 = Review.new(viewer3, evil_dead, 2)
review6 = Review.new(viewer3, waynes_world, 5)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
