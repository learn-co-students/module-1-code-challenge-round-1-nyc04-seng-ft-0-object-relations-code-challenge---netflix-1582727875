# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


stanley = Viewer.new('MarsXTC')
katy = Viewer.new('Cheshire')

kingdom = Movie.new('Kingdom')
zombie = Movie.new('Zombie Land')

#def initialize(viewer, movie, rating)

review2 = Review.new(stanley, zombie, 5)
review1 = Review.new(katy, zombie, 10)
review = Review.new(stanley, kingdom, 4)
review3 = Review.new(stanley, kingdom, 7)

stanley.reviewed_movies
kingdom.reviewers

# katy.reviewed_movie?(kingdom)
# p stanley.reviewed_movie?(kingdom) #--> false 
# p stanley.reviewed_movies  #--> zombieland 
# p kingdom.reviews #--> none
# stanley.rate_movie(kingdom, 4) # --> creates new 
# p stanley.reviewed_movie?(kingdom) #-->true 
# p stanley.reviewed_movies #--> includes kingdom




zombie.average_rating
p zombie.average_rating

p stanley.reviewed_movies

p Movie.highest_rated #Returns Kingdom with a rating of 4 due to .rate_movie ln36

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
