class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
        
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concert|
            concert.band == 0
        end
    end

    
    def play_in_venue(date, venue)
        Concert.new(date, self, venue)
    end
    def all_introductions
        self.concerts.map {|concert| concert.introduction}
    end
end

# UNABLE TO SOLVE THE BELOW ERRORS#

# Traceback (most recent call last):
#         2: from tools/console.rb:24:in `<main>'
#         1: from tools/console.rb:24:in `new'
# /home/lenovo/Desktop/Development/Moringa/phase-1-concerts-20200928 (1)/phase-1-concerts-20200928/code-challenge/app/models/concert.rb:11:in `initialize': undefined method `<<' for nil:NilClass (NoMethodError)
