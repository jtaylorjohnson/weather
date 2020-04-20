class Place
    attr_accessor :weather
    @@all = []

    def initialize(weather)
        @weather = weather
        @@all <<self
    end

    def self.all
        @@all
    end

    def self.weather
        @weather
    end
    
end
