class Problem8

  def initialize digits
    @bn = digits
  end
  
  def greatest_product size
    
    max_product = 0
    max_slice = ""
    
    while @bn.length >= size
      next_slice = @bn.slice(0...size)

      product_slice = 1
      next_slice.split("").each {|n| product_slice *= n.to_i}
      if product_slice > max_product
        max_product = product_slice
        max_slice = next_slice
      end
      
      @bn.slice!(0)
      
    end
    
    [max_product, max_slice]
  end

end
