require "geocoder"

p"Input your location"
myinp = gets.chomp

if myinp.include? "."

	coord = Geocoder.search("myinp").first.address
	print "Address for your entered Coordinates : "
	print coord
	print "" 



else
	coord = Geocoder.search("myinp").first.coordinates
	print "Coordinates for your entered address : Latitude = #{coord.first} , Longitude = #{coord.last}"
	print  ""



end
