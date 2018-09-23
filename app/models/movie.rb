class Movie < ActiveRecord::Base
    
    def self.ratings
    allRatings = []
    Movie.all.each do |movie|
      if (allRatings.find_index(movie.rating) == nil)
        allRatings.push(movie.rating)
      end
    end
    return allRatings
  end
end
