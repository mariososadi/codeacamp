



#  AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)

  a=[]
  array.each do |x| 
    for i in (2..x-1)
      a << x if x % i == 0 
    end
  end
  array -= a
  array.map{ |p| p*p }   

end

# Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
 puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
 puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]
