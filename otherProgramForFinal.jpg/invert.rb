require "./image_array.rb"

img = ImageArray.new("./yosemite.jpg")

img.each do |row|
        row.each do |pixel|
                pixel.red = img.max_intensity - pixel.red
                pixel.blue = img.max_intensity - pixel.blue
                pixel.green = img.max_intensity - pixel.green
        end
end

img.write("./yosemite_invert.jpg")

