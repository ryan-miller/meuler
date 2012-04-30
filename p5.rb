# 2520 is the smallest number that can be divided by each 
# of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible 
# by all of the numbers from 1 to 20?

found = false
num = 1

start_time = Time.now

while !found
  
  if (num % 11 == 0 &&
      num % 12 == 0 &&
      num % 13 == 0 &&
      num % 14 == 0 &&
      num % 15 == 0 &&
      num % 16 == 0 &&
      num % 17 == 0 &&
      num % 18 == 0 &&
      num % 19 == 0 &&
      num % 20 == 0) then
      puts num
      break;
  end
  
  num += 1

end

end_time = Time.now
puts (end_time - start_time) * 1000.0