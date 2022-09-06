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
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
