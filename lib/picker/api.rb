class Api

    def self.find_location(string)

    def self.get_weather(id)
        url = "https://www.metaweather.com/api/location/#{id}"
        response = HTTParty.get(url)
        weather = response["consolidated_weather"][0]["weather_state_name"]
        puts weather 

    end
end
