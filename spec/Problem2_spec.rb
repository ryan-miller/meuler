require_relative '../Problem2'

describe Problem2 do

  before :each do
    @p2 = Problem2.new
  end

  describe "#new" do
    it "takes no parameters and returns a P2 object" do
      @p2.should be_an_instance_of Problem2
    end
  end

  it "it returns 10 for sum or fibonaccis up to 10" do
    @p2.sum_even_value_fibonacci_up_to(10).should eql 10
  end

  it "it returns 4613732 for sum or fibonaccis up to 4,000,000" do
    @p2.sum_even_value_fibonacci_up_to(4000000).should eql 4613732
  end
  
  it "it returns 0 for sum or fibonaccis up to 4" do
    @p2.sum_even_value_fibonacci_up_to(4).should eql 2
  end

end