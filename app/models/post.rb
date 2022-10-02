class Post < ApplicationRecord
    
    belongs_to :user
    geocoded_by :location
    after_validation :geocode 

    def location
        [latitude, longitude].compact.join(', ')
    end

end


# inside of here is where we do associations