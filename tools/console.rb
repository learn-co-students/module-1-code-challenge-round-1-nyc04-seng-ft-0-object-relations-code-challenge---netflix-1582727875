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






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
