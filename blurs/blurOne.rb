require "./image_array.rb"
  
img = ImageArray.new("./gorrila.jpg")
img = edit
img.rows.times do |i|
        img.columns.times do |j|
		if i != 0 && i != img.rows-1 && j != 0 && j != img.columns-1
			img[j][i].red = ((img[j][i+1].red)+(img[j][i-1].red)+(img[j-1][i].red)+(img[j+1][i].red)+(img[j][i].red))/5
			img[j][i].green = ((img[j][i+1].green)+(img[j][i-1].green)+(img[j-1][i].green)+(img[j+1][i].green)+(img[j][i].green))/5
			img[j][i].blue = ((img[j][i+1].blue)+(img[j][i-1].blue)+(img[j-1][i].blue)+(img[j+1][i].blue)+(img[j][i].blue))/5
		end
        end
end

edit.write("./gorilla_blur.jpg")
