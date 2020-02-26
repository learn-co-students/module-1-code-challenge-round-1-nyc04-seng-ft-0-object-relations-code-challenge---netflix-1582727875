# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

kevin = Viewer.new('kev-kev')
miranda = Viewer.new('ch0xi')
michael = Viewer.new('smallchild')
konnor = Viewer.new('reverse_pool_party')

parasite = Movie.new('Parasite')
godfather = Movie.new('Godfather')
room = Movie.new('The Room')
sharknado = Movie.new('Sharknado')

review1 = Review.new(kevin, parasite, 1)
review2 = Review.new(miranda, parasite, 2)
review3 = Review.new(michael, room, 8)
review4 = Review.new(konnor, godfather, 9)
review5 = Review.new(michael, parasite, 2)
review6 = Review.new(kevin, sharknado, 1)
review7 = Review.new(kevin, godfather, 10)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
