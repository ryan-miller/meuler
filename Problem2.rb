# Each new term in the Fibonacci sequence is generated by adding the previous 
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values 
# do not exceed four million, find the sum of the even-valued terms.

class Problem2
  
  def initialize
    @seq = [2,1]
  end
  
  def sum_even_value_fibonacci_up_to n
    until @seq.first > n
      sum = @seq.first + @seq[1]
      @seq.unshift sum
    end
    @seq.delete_at 0
    @seq.delete_if { |i| i % 2 != 0 }
    @seq.inject(0) { | sum, item | sum + item }
  end
  
end