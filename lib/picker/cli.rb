class Cli
    def run
        puts " "
        puts "Welcome to my Weather App!"
        puts " "
        puts "Enter a Place to see Weather"
        puts " "
        @input = gets.strip.downcase
        Api.get_weather(@input)
       
    end


end
 