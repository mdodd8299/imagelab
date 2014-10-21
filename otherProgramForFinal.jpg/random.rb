require "./image_array.rb"

img = ImageArray.new("./gorrila.jpg")

img.each do |row|
        row.each do |pixel|
                pixelBrightRed = pixel.red + 8
		pixelBrightBlue = pixel.blue + 8
		pixelBrightGreen = pixel.green + 8
                pixel.red = pixelBrightRed
                pixel.blue = pixelBrightBlue
                pixel.green = pixelBrightGreen
        end
end

img.write("./tryingstuff.jpg")

