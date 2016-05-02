class Elefante
	
  def intialize(num)
    @num = num
  end
  
  def loop_esp
    1.upto(@num) { |n| p "#{n} elefante se columpiaba sobre la tela de una araña, como veía que resistía fueron a llamar a otro elefante."}
  end

  def loop_eng
    if @num == 0
      99.downto(@num + 1) { |n| p "#{n} bottles of beer on the wall, #{n} bottles of beer. Take one down and pass it around, #{n-1} bottles of beer on the wall."}
      "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
    else 
      99.downto(@num) { |n| p "#{n} bottles of beer on the wall, #{n} bottles of beer. Take one down and pass it around, #{n-1} bottles of beer on the wall."}
    end
  end
end

start_song = Elefante.new
p "Escribe el número en el que quieres que se rompa la telaraña"
num = gets.chomp.to_i
start_song.intialize(num)
p start_song.loop_esp

p "Type the number of bottles of beer that you want on the wall"
num = gets.chomp.to_i
start_song.intialize(num)
p start_song.loop_eng

