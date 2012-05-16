# A pythagorean triplet is a set of three natural numbers, a < b < c, for which
# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class Problem9
    
  def pythagorean_triplet product
    @product = product
    c_start = product / 2
    c_end = product / 3
    b_start = c_start - 1
    b_end = c_end - 1
    a_start = b_start - 1
    a_end = 1
    
    # c will naturally have the most narrow range, so let's start there
    (c_start).downto(c_end) { |c|
      (b_start).downto(b_end) { |b|
        (a_start).downto(a_end) { |a|
          if (goal?(a, b, c) && pythagorean?(a, b, c)) then
            return a * b * c
          end
        }
      }
    }
    
  end
  
  private
  
  def pythagorean? a, b, c
    return (a**2 + b**2 == c**2)
  end
  
  def goal? a, b, c
    return a + b + c == @product
  end

end
