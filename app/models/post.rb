class Post < ApplicationRecord
    
    belongs_to :user
    geocoded_by :location
    after_validation :geocode 

    def location
        [latitude, longitude].compact.join(', ')
      end
    def google_map(center)
        "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=500x500&zoom=17&key=#{Rails.application.credentials.maps_key}"
    end  

end


# inside of here is where we do associations