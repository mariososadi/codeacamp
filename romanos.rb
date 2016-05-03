def to_roman(num)
  array = num.to_s.split('')
  array.reverse!
  a=[]

  case array[3]
  when "1" then a << "M"
  when "2" then a << "MM"
  when "3" then a << "MMM"
  else a << "0"
  end

  case array[2]
  when "1" then a << "C"
  when "2" then a << "CC"
  when "3" then a << "CCC"
  when "4" then a << "CD"
  when "5" then a << "D"
  when "6" then a << "DC"
  when "7" then a << "DCC"
  when "8" then a << "DCCC"
  when "9" then a << "CM"
  when "0" then a << "0"
  end

  case array[1]
  when "1" then a << "X"
  when "2" then a << "XX"
  when "3" then a << "XXX"
  when "4" then a << "XL"
  when "5" then a << "L"
  when "6" then a << "LX"
  when "7" then a << "LXX"
  when "8" then a << "LXXX"
  when "9" then a << "XC"
  when "0" then a << "0"
  end

  case array[0]
  when "1" then a << "I"
  when "2" then a << "II"
  when "3" then a << "III"
  when "4" then a << "IV"
  when "5" then a << "V"
  when "6" then a << "VI"
  when "7" then a << "VII"
  when "8" then a << "VIII"
  when "9" then a << "IX"
  when "0" then a << "0"
  end
  
  a.delete("0")
  a.join

end

# Pruebas

a = to_roman(1) == "I"
b = to_roman(3) == "III"  
c = to_roman(4) == "IV"
d = to_roman(9) == "IX"
e = to_roman(13) == "XIII"
f = to_roman(14) == "XIV"
g = to_roman(944) == "CMXLIV"
h = to_roman(1453) == "MCDLIII"
i = to_roman(1646) == "MDCXLVI"


puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 
