require_relative '../Problem3'

describe Problem3 do

  before :each do
    @p3 = Problem3.new
  end

  describe "#new" do
    it "takes no parameters and returns a P3 object" do
      @p3.should be_an_instance_of Problem3
    end
  end

  it "confirms 29 is the lpf of 13195" do
    @p3.largest_prime_factor(13195).should eql 29
  end
  
  it "confirms 6857 is the lpf of 600851475143" do
    @p3.largest_prime_factor(600851475143).should eql 6857
  end

end