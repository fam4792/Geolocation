require "geocoder"


def nextl
		print "\n"
	end



print "Input your location : "
myinp = gets.chomp



if myinp.include? "." 

	coord = Geocoder.search(myinp).first.address
	nextl
	print "Address for your entered Coordinates : "
	print coord
	nextl 
else
	lat = Geocoder.search(myinp).first.latitude
	lon = Geocoder.search(myinp).first.longitude
	nextl
	print "Coordinates for your entered address : Latitude = #{lat} , Longitude = #{lon}"
	nextl
end


nextl
