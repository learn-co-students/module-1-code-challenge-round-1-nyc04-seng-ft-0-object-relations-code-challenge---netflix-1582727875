# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# Seeeeeeeeds

top_gun = Movie.new('Top Gun')
skyfall = Movie.new('Skyfall')
avengers = Movie.new('Avengers')
jay_bob = Movie.new('Jay and Silent Bob Strike Back')

ben = Viewer.new('Ben')
jack = Viewer.new('Jack')
annie = Viewer.new('Annie')
chris = Viewer.new('Chris')
eric = Viewer.new('Eric')
andrew = Viewer.new('Andrew')

review1 = andrew.rate_movie(avengers, 3.5)
review2 = eric.rate_movie(jay_bob, 4.8)
review3 = ben.rate_movie(top_gun, 5)
review4 = ben.rate_movie(avengers, 4)
review5 = eric.rate_movie(jay_bob, 3.4)   # updating the rating

should_be_true = review2 == review5




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
