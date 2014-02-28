require "geocoder"


def nextl
		print "\n"
	end


print "Input your location : "
myinp = gets.chomp

if myinp.include? "."

	coord = Geocoder.search("myinp").first.address
	nextl
	print "Address for your entered Coordinates : "
	print coord
	nextl 



else
	coord = Geocoder.search("myinp").first.coordinates
	nextl
	print "Coordinates for your entered address : Latitude = #{coord.first} , Longitude = #{coord.last}"
	nextl
end

nextl
