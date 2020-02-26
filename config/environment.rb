# require the Bundler module
require 'bundler/setup'

# require all gems defined in the Gemfile
Bundler.require

# require all files in the top-level app directory
require_rel '../app'

 andrew = Viewer.new("Andrew")
 scott = Viewer.new("Scott")
 batman = Movie.new("Batman")
 superman = Movie.new("Superman")
 spiderman = Movie.new("Spiderman")
 review_batman_a = Review.new(andrew, batman, 5)
 review_superman_a = Review.new(andrew, superman, 4)
 review_batman_s = Review.new(scott, batman, 2)
 review_superman_s = Review.new(scott, superman, 1)

puts "_________________"
puts "Andrews reviews"
p andrew.reviews
puts "____________"
puts "Andrews reviewed movie instances"
p andrew.reviewed_movies
puts "-------------"
puts "batman movie instance reviews"
p batman.reviews
puts "--------------"
puts "superman viewers"
p superman.reviewers
puts "--------------"
puts "did andrew review spiderman? SHOULD BE FALSE"
p andrew.reviewed_movie?(spiderman)
puts "---------------"
puts "all of batmans review scores in an array"
p batman.review_scores
puts "________________"
puts "batman average rating SHOULD BE 3.5"
p batman.average_rating
puts "---------------"
puts "batman highest review SHOULD BE 5"
p batman.highest_review



puts "done"
