require "./image_array.rb"
  
img = ImageArray.new("./two.jpg")

puts img.rows
puts img.columns

now = Time.now

img.rows.times do |j|
        img.columns.times do |i|
		if (i>1 && i<img.columns-2) && (j>1 && j<img.rows-2)
			img[j][i].red = (
			(img[j][i+1].red)+(img[j][i+2].red)+
			(img[j][i-1].red)+(img[j][i-2].red)+
			(img[j-1][i].red)+(img[j-2][i].red)+
			(img[j+1][i].red)+(img[j+2][i].red)+
			(img[j+1][i+1].red)+(img[j+2][i+2].red)+
			(img[j-1][i-1].red)+(img[j-2][i-2].red)+
			(img[j][i].red)+
			(img[j+1][i-1].red)+(img[j-1][i+1].red)+
			(img[j+2][i+1].red)+(img[j+1][i+2].red)+
			(img[j-2][i+1].red)+(img[j-1][i+2].red)+
			(img[j-2][i-1].red)+(img[j-1][i-2].red)+
			(img[j+2][i-1].red)+(img[j+1][i-2].red)
			)/25

			img[j][i].blue = (
			(img[j][i+1].blue)+(img[j][i+2].blue)+
			(img[j][i-1].blue)+(img[j][i-2].blue)+
			(img[j-1][i].blue)+(img[j-2][i].blue)+
			(img[j+1][i].blue)+(img[j+2][i].blue)+
			(img[j+1][i+1].blue)+(img[j+2][i+2].blue)+
			(img[j-1][i-1].blue)+(img[j-2][i-2].blue)+
			(img[j][i].blue)+
			(img[j+1][i-1].blue)+(img[j-1][i+1].blue)+
			(img[j+2][i+1].blue)+(img[j+1][i+2].blue)+
			(img[j-2][i+1].blue)+(img[j-1][i+2].blue)+
			(img[j-2][i-1].blue)+(img[j-1][i-2].blue)+
			(img[j+2][i-1].blue)+(img[j+1][i-2].blue)
			)/25

			img[j][i].green = (
			(img[j][i+1].green)+(img[j][i+2].green)+
			(img[j][i-1].green)+(img[j][i-2].green)+
			(img[j-1][i].green)+(img[j-2][i].green)+
			(img[j+1][i].green)+(img[j+2][i].green)+
			(img[j+1][i+1].green)+(img[j+2][i+2].green)+
			(img[j-1][i-1].green)+(img[j-2][i-2].green)+
			(img[j][i].green)+
			(img[j+1][i-1].green)+(img[j-1][i+1].green)+
			(img[j+2][i+1].green)+(img[j+1][i+2].green)+
			(img[j-2][i+1].green)+(img[j-1][i+2].green)+
			(img[j-2][i-1].green)+(img[j-1][i-2].green)+
			(img[j+2][i-1].green)+(img[j+1][i-2].green)
			)/25
		end
        end
end

puts Time.now-now

img.write("./hope.jpg")
