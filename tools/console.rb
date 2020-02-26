# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jaws = Movie.new("Jaws")
nightcrawler = Movie.new("Nightcrawler")
john = Viewer.new("John")
stan = Viewer.new("Stan")
p stan.rate_movie(jaws,8)
p  stan.rate_movie(jaws,100)
p jaws.title
p john.username





puts " Done"
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
#binding.pry
0
