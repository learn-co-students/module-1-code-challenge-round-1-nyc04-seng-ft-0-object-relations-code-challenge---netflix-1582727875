class Review
attr_accessor :rating,:viewer,:movie
@@all = []
    def initialize (viewer,movie,rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        @rating
    end

    def viewer
        @viewer
    end

    def movie
        @movie
    end














end
