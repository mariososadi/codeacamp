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
a.collect!{|x| x.start_with?(x[0].upcase) ? x + "0" : x }
a.collect!{ |x| x[0].upcase + x[1..-1] }.sort!
a.collect!{|x| x[-1, 1] == "0" ?  x.chomp(x[-1, 1]) : x[0].downcase + x[1..-1] }

puts "Felicidades! Tu diccionario tiene #{a.length} palabras:"
a.each { |x| puts x }
