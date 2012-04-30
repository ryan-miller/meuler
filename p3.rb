# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'mathn'
# find factors
full = 600851475143
s = Math.sqrt(full).ceil.to_i
factors = []

start_time = Time.now
s.downto(1).each { |n| 
  
  if full % n == 0 && n.prime? then
    puts "found factor: #{n}"
    break
  end

}
end_time = Time.now
puts (end_time - start_time) * 1000.0