def create_html_1(string1,string2)
	file = File.open("index1.html","w")
	file.puts "<!DOCTYPE html>"
	file.puts "<html>"
	file.puts "<head>"
	file.puts "<title></title>"
	file.puts "</head>"
	file.puts "<body>"
	file.puts "<p>"+string1+"</p>"
	file.puts "<p>"+string2+"</p>"
	file.puts "</body>"
	file.puts "</html>"
	file.close
	return nil
end

create_html_1('Nancy','Valdebenito')

def create_html_2(string1,string2,arreglo)
	file = File.open("index2.html","w")
	file.puts "<!DOCTYPE html>"
	file.puts "<html>"
	file.puts "<head>"
	file.puts "<title></title>"
	file.puts "</head>"
	file.puts "<body>"
	file.puts "<p>"+string1+"</p>"
	file.puts "<p>"+string2+"</p>"
	file.puts "<ul>"
	arreglo.each{|i| file.puts '<li>'+i.to_s+'</li>'} 
	file.puts "</ul>"
	file.puts "</body>"
	file.puts "</html>"
	file.close
	return nil
end

create_html_2('Nancy','Valdebenito',['nan',2,3,4,'cinco'])

def create_html_3(string1,string2,arreglo,color)

	file = File.open("index3.html","w")
	file.puts "<!DOCTYPE html>"
	file.puts "<html>"
	file.puts "<head>"
	file.puts "<title></title>"
	file.puts "</head>"
	file.puts "<body style=background-color:"+color+">"
	file.puts "<p>"+string1+"</p>"
	file.puts "<p>"+string2+"</p>"
	file.puts "<ul>"
	arreglo.each{|i| file.puts '<li>'+i.to_s+'</li>'} 
	file.puts "</ul>"
	file.puts "</body>"
	file.puts "</html>"
	file.close
	return nil
end

create_html_3('Nancy','Valdebenito',['nan',2,3,4,'cinco'],'red')