# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class Problem4
    
  def palindrome? n
    return n.to_i == n.to_s.reverse.to_i
  end
  
  def rounded_square_root n
    return Math.sqrt(n).ceil()
  end
  
  def is_x_digits n, x
    return n.to_s.size == x
  end
  
  def made_from_two_x_digit_numbers?(n, x) 
    start = rounded_square_root(n)
    no_remainder = false
    if (n % start) == 0 then
      no_remainder = true
    end

    while start > 1 

      no_remainder = (n % start) == 0

      if no_remainder  && is_x_digits(start, x) && is_x_digits(n/start, x) 
        return true
      end

      start = start -1 
    end

  end
  
  def largest_palindrome n
    @s = n ** 2
    @s.downto(1) { | i |
      if (palindrome?(i) && made_from_two_x_digit_numbers?(i, n.to_s.length) ) 
        return i
      end
    }
    
    return n
  end
  
end