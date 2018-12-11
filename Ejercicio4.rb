def item1
	file = File.open('file.txt','r')
		array = file.readlines
		file.close
		#print array
		words_1 = []
		words_2 = []
		array.each{|i| words_1 += i.chomp.split(', ') }
		array.each do |i|
			word = []
			word.push(i.split(', '))				
			words_2.push(word[0][0])	
		
		end 
		puts words_2.length
end

def item3
	file = File.open('file.txt','r')
	array = file.readlines
	file.close
	array.each do |i|
		word = []
		word.push(i.split(', '))
		puts word[0][0]
	end
end

def item5
	puts 'Ingrese un nuevo Producto'
	producto = gets.chomp
	puts 'Ingrese el stock de tres separado por comas Ej. 1, 2, 3 '
	stock = gets.chomp
	file = File.open('file.txt','a')
	file.puts producto+','+stock
	file.close
end

loop do
	puts 'Ingrese una opción'
	puts '1 Conocer la cantidad de productos existentes'
	puts '2 Ingresar el nombre de un producto y buscar el stock'
	puts '3 Conocer los productos registrados en bodega'
	puts '4 Conocer los productos con existencia total menor a un valor'
	puts '5 Registra un nuevo producto con el stock'
	puts '6 Salir'
	select = gets.chomp

	if select == '1'
		item1
	elsif select == '2'
		puts ''
	elsif select == '3'
		puts 'Los productos disponibles son :' 
		item3
	elsif select == '4'
		puts ''
	elsif select == '5'
		item5
	elsif select == '6'
		break
	else
		puts 'Esta no es una opción válida'
		
	end
end
