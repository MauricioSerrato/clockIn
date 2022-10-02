class Post < ApplicationRecord
    
    belongs_to :user
    geocoded_by :location
    after_validation :geocode 

    def address
        [latitude, longitude].compact.join(', ')
    end

end


# inside of here is where we do associations