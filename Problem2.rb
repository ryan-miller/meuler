# Each new term in the Fibonacci sequence is generated by adding the previous 
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values 
# do not exceed four million, find the sum of the even-valued terms.
seq = [2,1]

# performs one extra calc before deleting it, icky
until (seq.first.to_i > 4000000)
  first = seq.first.to_i
  second = seq[1].to_i
  sum = first + second
  seq.unshift(sum)
  puts seq.to_s
end
  
seq.delete_at(0)
seq.delete_if {|i| i % 2 != 0}
puts seq.to_s
puts seq.inject(0){|sum,item| sum + item}

