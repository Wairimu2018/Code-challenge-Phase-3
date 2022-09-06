class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concert|
            concert.venue == self
        end
    end

    def bands
        self.concerts.map do |band|
            band.band
        end
    end

    def concert_on(date)
       self.concerts.find{|concert| concert.date == date}
    end

    def most_frequent_band
        self.bands.max_by {|index| bands.count(index)}
    end
end