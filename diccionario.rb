a=[]
puts "Escribe una palabra:"
word = gets.chomp
a << word

while word.empty? == false
  puts "Escribe otra palabra(o presiona 'enter' para finalizar):"
  word = gets.chomp
  a << word 
end

a.delete_if{ |x| x.empty? }
a.collect{ |x| x.upcase }

#puts "Felicidades! Tu diccionario tiene #{a.length} palabras:"
#a.sort.each { |x| puts x }
