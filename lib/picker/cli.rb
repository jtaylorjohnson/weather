class Cli
    def run
        puts " "
        puts "Welcome to my Weather App!"
        puts " "
        puts "Enter a Place to see Weather"
        puts " "
        @input = gets.strip.downcase
        Api.get_weather(@input)
        binding.pry
        puts "The current condition is #{Place.weather}"

    end


end
 