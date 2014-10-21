# Require anything
require "./image_array.rb"

# State what the program will do
puts "\e[H\e[2J"
puts "
This program will take an image that you will input, and either blur, rotate, or invert the colors. You will be able to put more then one effect on picture. 

If you would like to roatate a picture, please make sure the image is a sqaure. 

If you would like to blur an image it must be smaller then 236 pixels  by 191 pixels. 

At any point you can quit the program by typing 'Q' instead of anwsering the prompt.

"
# While true and if statments
timesRun = 1
new = ""

# -------------------------------------------------
# -------------------------------------------------

while true
	
	#-----------------------------------------------
	# -------------------------------------------------

	# If its the first time the program has run
	if timesRun == 1
		puts "What is the picture file that you would like to edit. If you only hit enter, a default picture will be used."
		fileName = gets.chomp
		if fileName == ""
			fileName = "default.jpg"
		elsif fileName == "q" || fileName == "Q"
			break
		else 
			fileName = fileName
		end
	img = ImageArray.new("./" + fileName)
	else

		# -------------------------------------------------

		# If this is not the first time its been run
		puts "Would you like to countinue editing the picture you have already applied an effect? If you would like to quit, press 'Q'"
		again = gets.chomp
		if again == "yes" || again == "Yes"
			fileName = new
		elsif again == "no" || again == "No"
			puts "What is the picture file that you would like to edit. If you only hit enter, a default picture will be used."
			fileName = gets.chomp
			if fileName == ""
                	        img = ImageArray.new("./default.jpg")
	                else
                       		img = ImageArray.new("./"+fileName)
       		 	end
		elsif 
			again == "q" || again == "Q"
			break
		end
	end


	# -------------------------------------------------
	# -------------------------------------------------

	puts "What would you like to do to your picture?
	Rotate = R
	Invert = I
	Blur = B
	Quit = Q"
	action = gets.chomp




	# If for Rotate
	if action == "R" || action == "r"

		# Make sure that the image is a square
		checkRows = img.rows
		checkColumns = img.columns
		if checkRows == checkColumns

			# Program
			puts "Please one of the options listed below.
	Rotate left-> L
	Rotate Right-> R
	Flip 180 degrees -> 180
	Mirror Verticaly -> V
	Mirror Horizontaly -> H"
			amount = gets.chomp

			puts "This may take a few seconds..."

			# ___________________________________________________________________________________________
			# ___________________________________________________________________________________________

			if amount == "R" || amount == "r"

				array = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					array.push rowArray.reverse
				end

				array = array.transpose

				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = array[i][j][:red]
						img[i][j].green = array[i][j][:green]
						img[i][j].blue = array[i][j][:blue]
					end
				end
				# ___________________________________________________________________________________________
				# ___________________________________________________________________________________________

			elsif amount == "L" || amount == "l"

				array = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					array.push rowArray
				end

				array = array.transpose

				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = array[i][j][:red]
						img[i][j].green = array[i][j][:green]
						img[i][j].blue = array[i][j][:blue]
					end
				end

				newArray = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					newArray.push rowArray.reverse
				end


				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = newArray[i][j][:red]
						img[i][j].green = newArray[i][j][:green]
						img[i][j].blue = newArray[i][j][:blue]
					 end
				end
					 # ___________________________________________________________________________________________
					 # ___________________________________________________________________________________________

			elsif amount == "180"
				array = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					array.push rowArray.reverse
				end

				array = array.transpose

				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = array[i][j][:red]
						img[i][j].green = array[i][j][:green]
						img[i][j].blue = array[i][j][:blue]
					end
				end


				array = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					array.push rowArray.reverse
				end

				array = array.transpose

				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = array[i][j][:red]
						img[i][j].green = array[i][j][:green]
						img[i][j].blue = array[i][j][:blue]
					end
				end

				# ___________________________________________________________________________________________
				# ___________________________________________________________________________________________

			elsif amount == "H" || amount == "h"
				array = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					array.push rowArray.reverse
				end



				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = array[i][j][:red]
						img[i][j].green = array[i][j][:green]
						img[i][j].blue = array[i][j][:blue]
					end
				end
				# ___________________________________________________________________________________________
				# ___________________________________________________________________________________________

			elsif amount == "v" || amount == "V"
				 array = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					array.push rowArray
				end

				array = array.transpose

				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = array[i][j][:red]
						img[i][j].green = array[i][j][:green]
						img[i][j].blue = array[i][j][:blue]
					end
				end

				newArray = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					newArray.push rowArray.reverse
				end


				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = newArray[i][j][:red]
						img[i][j].green = newArray[i][j][:green]
						img[i][j].blue = newArray[i][j][:blue]
					 end
				end

				newNewArray = []
				img.each do |row|
					rowArray = []
					row.each do |pixel|
						rowArray.push({:red=>pixel.red,:green=>pixel.green,:blue=>pixel.blue})
					end
					newNewArray.push rowArray
				end

				newNewArray = newNewArray.transpose

				img.rows.times do |i|
					img.columns.times do |j|
						img[i][j].red = newNewArray[i][j][:red]
						img[i][j].green = newNewArray[i][j][:green]
						img[i][j].blue = newNewArray[i][j][:blue]
					 end
				 end


			end


		
		# Not a square
		else
			puts "Please make sure your iamge is a square."
				
		end
	
	# -------------------------------------------------
	
	# If for Blur
	elsif action == "B" || action == "b"
	sizeRows = img.rows
	sizeColumns = img.columns
		
		if (sizeRows < 191 && sizeColumns < 236) || (sizeRows < 236 && sizeColumns < 191)
			# If for Amount of Bluriness and puts and gets
			puts "How much would like to blur your image"
			puts "Please rate the wanted blureness on a scale from 1 to 3"
			amountOfBlur = gets.chomp
			puts "This may take a few seconds..."		

			# If for One
			if amountOfBlur == "1" or amountOfBlur == "one"
				img.rows.times do |i|
					img.columns.times do |j|
						if i != 0 && i != img.rows-1 && j != 0 && j != img.columns-1
							img[j][i].red = ((img[j][i+1].red)+(img[j][i-1].red)+(img[j-1][i].red)+(img[j+1][i].red)+(img[j][i].red))/5
							img[j][i].green = ((img[j][i+1].green)+(img[j][i-1].green)+(img[j-1][i].green)+(img[j+1][i].green)+(img[j][i].green))/5
							img[j][i].blue = ((img[j][i+1].blue)+(img[j][i-1].blue)+(img[j-1][i].blue)+(img[j+1][i].blue)+(img[j][i].blue))/5
						end
					end
				end

			# If for Two
			elsif amountOfBlur == "2" or amountOfBlur == "two"
				img.rows.times do |j|
					img.columns.times do |i|
						if j != 0 && j != img.rows-1 && i != 0 && i != img.columns-1
							img[j][i].red = ((img[j][i+1].red)+(img[j][i-1].red)+(img[j-1][i].red)+(img[j+1][i].red)+(img[j+1][i+1].red)+(img[j-1][i-1].red)+(img[j][i].red)+(img[j+1][i-1].red)+(img[j-1][i+1].red))/9
							img[j][i].green = ((img[j][i+1].green)+(img[j][i-1].green)+(img[j-1][i].green)+(img[j+1][i].green)+(img[j+1][i+1].green)+(img[j-1][i-1].green)+(img[j][i].green)+(img[j+1][i-1].green)+(img[j-1][i+1].green))/9
							img[j][i].blue = ((img[j][i+1].blue)+(img[j][i-1].blue)+(img[j-1][i].blue)+(img[j+1][i].blue)+(img[j+1][i+1].blue)+(img[j-1][i-1].blue)+(img[j][i].blue)+(img[j+1][i-1].blue)+(img[j-1][i+1].blue))/9
						end
					end
				end
		
			# If for Three
			elsif amountOfBlur == "3" or amountOfBlur == "three"
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
			end
		else
			puts "Your file is too big. it would take too long to blur"
		end		
# -------------------------------------------------

	# If for Invert
	elsif action == "I" or action == "i"
		img.each do |row|
			row.each do |pixel|
				pixel.red = img.max_intensity - pixel.red
				pixel.blue = img.max_intensity - pixel.blue
				pixel.green = img.max_intensity - pixel.green
				end
			end

	# -------------------------------------------------

	# If for Quit
	elsif action == "Q" or action == "q"
		break

	# -------------------------------------------------

	# If for Not Valid
	else

		puts "That is not a valid affect. Please try again"

	end
	
	# -------------------------------------------------
	# -------------------------------------------------
	
	if action == "R" or action == "r" && checkRows == checkColumns
		new = "rotate_" + fileName
		img.write(new)
		timesRun = timesRun + 1
	elsif action == "I" or action == "i"
		new = "invert_" + fileName
		img.write(new)
		timesRun = timesRun + 1
	elsif action == "B" or action == "b"
		new = "blur_" + fileName
		img.write(new)
		timesRun = timesRun + 1

	end

end 

# -------------------------------------------------
# -------------------------------------------------


