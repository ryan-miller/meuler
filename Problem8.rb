class Problem8

  def initialize digits
    @bn = digits
  end
  
  def greatest_product size
    # start with the first slice
    max_slice = @bn.slice(0...size)
    max_product = find_product(max_slice)
      
    while @bn.length >= size
      next_slice = @bn.slice(0...size)
      
      # if next_slice contains "0" we can skip as result will be 0
      if !next_slice.to_s.include?("0") then
        product_slice = find_product(next_slice)
        if product_slice > max_product
          max_product = product_slice
          max_slice = next_slice
        end
      end
      
      @bn.slice!(0)
      
    end
    
    [max_product, max_slice]
  end
  
  private
  
  def find_product range
    product = 1
    range.split("").each {|n| product *= n.to_i}
    product
  end

end
