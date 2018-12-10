def count_words(file)
	file = File.open(file,"r")
 	lines = file.readlines
 	words = []
 	lines.each{|i| words += i.chomp.split(' ') }
	file.close
	print words.count
end

count_words('peliculas.txt')