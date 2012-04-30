# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
require 'mathn'

class Problem3

  def initalize
    
  end
  
  def largest_prime_factor n
    s = Math.sqrt(n).ceil.to_i
    s.downto(1).each { |i| 
      if n % i == 0 && i.prime?
        return i
      end
    }
    return 1
  end
  
end