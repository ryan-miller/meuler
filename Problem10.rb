#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.

require 'prime'

class Problem10

  def sum_primes_below max
    sum = 0
    Prime.each(max) { |n| sum += n }
  end

end