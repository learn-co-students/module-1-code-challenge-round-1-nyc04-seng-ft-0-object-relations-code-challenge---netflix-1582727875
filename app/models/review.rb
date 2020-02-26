class Review
    attr_accessor :viewer, :movie, :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating # integer
        @@all << self
    end

    # returns the rating for the `Review` instance
    def rating
        @rating
    end

    # returns an array of all initialized `Review` instances
    def self.all
        @@all
    end

    # returns the `Viewer` instance associated with the `Review` instance
    def viewer
        @viewer
    end

    # returns the `Movie` instance associated with the `Review` instance
    def movie
        @movie
    end

end
