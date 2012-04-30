# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.
#
# What is the 10,001st prime number?

require 'mathn'

def nth_prime(nth)

  primes = []
  num = 1

  while primes.length < nth
    primes.unshift(num) unless !num.prime?
    num += 1
  end
  
  return num

end

puts "The 10,001st prime number is #{nth_prime(10001)}"
#puts "The 10,001st prime number is #{Prime.first(10001).last}"

