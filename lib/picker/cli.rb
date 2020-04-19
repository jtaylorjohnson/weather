class Cli
    def run
        puts " "
        puts "Welcome to my Weather App!"
        puts " "
        puts "Enter a Place to see Weather"
        puts " "
        @place = gets.strip.down
        Api.get_weather(@place)
    end

end
