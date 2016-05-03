def to_roman(num)

  array = num.to_s.split('')
  array.reverse!
  a=[]
  m = ""
  c = ""
  d = ""
  u = ""
  five = "V"
  fifty = "L"
  f_hundred = "D"

  if array[3] != nil
    (1..array[3].to_i).each{ |x| m += "M" }
    a << m
  end

  if array[2] != nil
    if array[2].to_i <= 3
      (1..array[2].to_i).each{ |x| c += "C" }
      a << c
    elsif array[2].to_i == 4 
      a << "CD"
    elsif array[2].to_i == 9
      a << "CM"
    elsif array[2].to_i == 0
      a << c
    else
      (5..array[2].to_i - 1).each{ |x| c += "C" }
      a << f_hundred + c
    end
  end

  if array[1] != nil
    if array[1].to_i <= 3
      (1..array[1].to_i).each{ |x| d += "X" }
      a << d
    elsif array[1].to_i == 4 
      a << "XL"
    elsif array[1].to_i == 9
      a << "XC"
    elsif array[1].to_i == 0
      a << d
    else
      (5..array[1].to_i - 1).each{ |x| d += "X" }
      a << fifty + d
    end
  end

  if array[0].to_i == 0
    a << u
  elsif array[0].to_i <= 3
   (1..array[0].to_i).each{ |x| u += "I" }
    a << u
  elsif array[0].to_i == 4 
    a << "IV"
  elsif array[0].to_i == 9
    a << "IX"
  else
    (5..array[0].to_i - 1).each{ |x| u += "I" }
    a << five + u
  end

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
