require "./image_array.rb"
  
img = ImageArray.new("./gorrila.jpg")

puts img.rows
puts img.columns

img.rows.times do |j|
        img.columns.times do |i|
		if j != 0 && j != img.rows-1 && i != 0 && i != img.columns-1
			img[j][i].red = ((img[j][i+1].red)+(img[j][i-1].red)+(img[j-1][i].red)+(img[j+1][i].red)+(img[j+1][i+1].red)+(img[j-1][i-1].red)+(img[j][i].red)+(img[j+1][i-1].red)+(img[j-1][i+1].red))/9
			img[j][i].green = ((img[j][i+1].green)+(img[j][i-1].green)+(img[j-1][i].green)+(img[j+1][i].green)+(img[j+1][i+1].green)+(img[j-1][i-1].green)+(img[j][i].green)+(img[j+1][i-1].green)+(img[j-1][i+1].green))/9
			img[j][i].blue = ((img[j][i+1].blue)+(img[j][i-1].blue)+(img[j-1][i].blue)+(img[j+1][i].blue)+(img[j+1][i+1].blue)+(img[j-1][i-1].blue)+(img[j][i].blue)+(img[j+1][i-1].blue)+(img[j-1][i+1].blue))/9
		end
        end
end

img.write("./gorilla_blur.jpg")
