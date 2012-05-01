# 2520 is the smallest number that can be divided by each 
# of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible 
# by all of the numbers from 1 to 20?

class Problem5

  # greatest common divisor
  def gcd(a, b)
    if a == 0 || b == 0
      return a + b
    end
    gcd(b, (a % b))
  end

  # least common multiple
  def lcm(a, b)
    ( (a * b) / gcd(a, b) )
  end

  # lcm(a, b, c) = lcm(a, lcm(b, c))
  def lcmm(max, a)
    if a == max - 1
      return lcm(a, max)
    end
    lcm(a, lcmm(max, a+1))
  end

end
