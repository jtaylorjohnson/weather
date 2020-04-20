class Cli
    def run
        puts " "
        puts "Welcome to my Weather App!"
        puts " "
        puts "Enter the Name of a City"
        puts "to see the Current Weather!"
        puts " "
        @input = gets.strip.downcase
        get_weather(@input)
    end

    def get_weather(input)
        binding.pry
        Api.find_location(input)
        puts " "
        puts "It is currently #{Place.all[0].weather} in #{Place.all[0].title}."
        puts " "
        puts "To see #{Place.all[0].title}'s current Temperature and Humidity type 'yes'."
        if gets.strip.downcase == "yes"
            puts " "
            puts "It is Currently #{Place.all[0].temp}°C with a Humidity of #{Place.all[0].humidity}% in #{Place.all[0].title}."
            puts " "
            puts "Enter another City or 'exit' to Exit."
            @newinput = gets.strip.downcase
            get_weather(@newinput)
        else puts "Enter another City or 'exit' to Exit."
            @newinput = gets.strip.downcase
            get_weather(@newinput)
        end
    end 

end
 