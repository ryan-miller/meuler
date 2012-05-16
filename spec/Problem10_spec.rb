require_relative '../Problem10'

describe Problem10 do

  before :each do
    @p10 = Problem10.new
  end

  describe "#new" do
    it "takes no parameters and returns a Problem10 object" do
      @p10.should be_an_instance_of Problem10
    end
  end
  
  it "should find 17 as the sum of all primes below 10" do
    @p10.sum_primes_below(10).should eql 17
  end
  
  it "should find 142,913,828,922 as the sum of all primes below 2,000,000" do
    @p10.sum_primes_below(2000000).should eql 142913828922
  end
  
end