class Api
    def self.get_weather(place)
        url = "https://www.metaweather.com/api/location/#{place}"
        response = HTTParty.get(url)
        response.each {|r| Place.new}
        #weather = response["consolidated_weather"][0]["weather_state_name"]
        #Place.new(weather)

    end
end
