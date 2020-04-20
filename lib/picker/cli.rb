class Cli
    def run
        puts " "
        puts "Welcome to my Weather App!"
        puts " "
        puts "Enter the Name of a City"
        puts "to see the Current Weather!"
        puts " "
        @input = gets.strip.downcase.split.first
        get_weather(@input)
    end

    def get_weather(input)
        Api.find_location(input)
        puts " "
        puts "It is currently #{Place.all[0].weather} in #{Place.all[0].title}." 
        puts " "
        puts "To see #{Place.all[0].title}'s current Temperature and Humidity type 'yes'."
        if gets.strip.downcase == "source"
            puts "This information comes from #{Place.all[0].source}."
            new_or_exit
        elsif gets.strip.downcase == "yes"
            puts " "
            puts "It is Currently #{Place.all[0].temp}°C with a Humidity of #{Place.all[0].humidity}% in #{Place.all[0].title}."
            puts " "
            new_or_exit
        else
            new_or_exit
        end
    end 

    def new_or_exit
        puts "Enter another City or 'exit' to Exit."
        @input = gets.strip.downcase.split.first
        if @input == "source"
            puts "This information comes from #{Place.all[0].source}."
            new_or_exit
        elsif @input != "exit"
            get_weather(@input)
        else puts "Goodbye!"
        end
    end

end
 