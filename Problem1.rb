# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class Problem1

  def initialize
    @naturals = []
  end

  def sum_multiples_of_3_or_5_below n

    (1...n).each { |i|
      if i % 3 == 0 || i % 5 == 0
        @naturals.push(i)
      end
    }

    @naturals.inject(0) { |sum, item | sum + item }

  end

end
