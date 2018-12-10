def count_words_1(file)
	file = File.open(file,"r")
 	lines = file.readlines
 	words = []
 	lines.each{|i| words += i.chomp.split(' ') }
	file.close
	puts words.count
end

count_words_1('peliculas.txt')

def count_words_2(file,string)
	file = File.open(file,"r")
 	lines = file.readlines
 	words = []
 	lines.each{|i| words += i.chomp.split(' ') }
	file.close
	counts = []
	words.each{|i| counts.push(i) if i == string }
	puts counts.count
end

count_words_2('peliculas.txt','La')