# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the 
# first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
#
# Find the difference between the sum of the squares of the 
# first one hundred natural numbers and the square of the sum.

class Problem6

  def sum_squares(r)
    result = 0
    r.each { |n| result += n**2 }
    result
  end

  def square_sum(r)
    result = 0
    r.each { |n| result += n }
    result**2
  end

  def solve_for r
    square_sum(r) - sum_squares(r)
  end

end