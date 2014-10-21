require "./image_array.rb"

img = ImageArray.new("./yosemite.jpg")

img.each do |row|
	row.each do |pixel|
		pixelGray = (pixel.red + pixel.blue + pixel.green)/3
		pixel.red = pixelGray
		pixel.blue = pixelGray
		pixel.green = pixelGray
	end
end

img.write("./yosemite_bw.jpg")
