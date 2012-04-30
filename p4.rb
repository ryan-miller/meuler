# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
s = 999 * 999

def palindrome?(n)
  return n.to_i == n.to_s.reverse.to_i
end

def rounded_square_root(n) 
  return Math.sqrt(n).ceil()
end

def is_3_digits(n)
  return n.to_s.size == 3
end

def made_from_two_three_digit_numbers?(n) 
  start = rounded_square_root(n)
  no_remainder = false
  if (n % start) == 0 then
    no_remainder = true
  end

  while start > 1 
    
    no_remainder = (n % start) == 0
    
    if no_remainder  && is_3_digits(start) && is_3_digits(n/start) then
      return true
    end
    
    start = start -1 
  end
  
end

s.downto(1) { |n|
  if (palindrome?(n) && made_from_two_three_digit_numbers?(n)) then
    puts "found palindrome #{n}"  
    break
  end
}