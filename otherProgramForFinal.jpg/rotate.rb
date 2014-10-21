require "./image_array.rb"

img = ImageArray.new("./square.jpg")

puts "Please one of the options listed below.
	Rotate left-> L
	Rotate Right-> R
	Flip Uspide Down-> F
	Mirror Verticly -> V
	Mirror Horizontaly -> H"

amount = gets.chomp

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

elsif amount == "U" || amount == "u"
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
	
img.write("square_rotate.jpg")
