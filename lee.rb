# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
  string.reverse.swapcase.gsub( /[aeio]/, "*" )
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

def max_letter_frequency_per_word(sentence)

def words_longer_than(array, num)
  num = 3
  array.select{ |w| w.length > num }
end

def letter_per_word(array, letter)
  letter = "e"
  array.map{ |w| w.count(letter) }
end

def sentence_split(sentence)
  array = sentence.split
end

# sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
  sentence.sentence_split.letter_per_word.select.max 
  
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") #== 5
