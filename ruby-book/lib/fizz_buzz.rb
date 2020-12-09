def Fizz_Buzz(n)
  if n % 15 == 0
    'FizzBUzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

puts Fizz_Buzz(1)
puts Fizz_Buzz(2)
puts Fizz_Buzz(3)
puts Fizz_Buzz(4)
puts Fizz_Buzz(5)
puts Fizz_Buzz(6)
puts Fizz_Buzz(7)
puts Fizz_Buzz(8)
  
