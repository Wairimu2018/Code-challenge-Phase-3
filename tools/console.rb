require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry


# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Create Concerts Instances
alabama = Band.new("Alabama", "South")
mindsouth =Band.new("Midsouth", "Boys")
hillsong = Band.new("Hillsong", "United")
cityAlight =Band.new("City", "Alight")

#Create Venue instances
kenyacinema = Venue.new("Kenya Cinema", "Nairobi")
imax = Venue.new("Imax", "Nairobi")
nairobiBaptist = Venue.new("Nairobi Baptist", "ValleyRoad")
daystaruniversity = Venue.new("Daystar University", "ValleyRoad")

concert = Concert.new("2022-08-02", hillsong, nairobiBaptist)
concerta = Concert.new("2022-2-15", alabama, kenyacinema)
concertb = Concert.new("2022-4-20", midsouth, imax)
concertc = Concert.new("2022-9-05", alabama, kenyacinema)
concertd = Concert.new("2022-10-15", cityAlight, daystaruniversity)
concerte = Concert.new("2023-01-01", hillsong, daystaruniversity)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
