require_relative '../Problem12'

describe Problem12 do

  before :each do
    @p12 = Problem12.new
  end

  describe "#new" do
    it "takes no parameters and returns a Problem12 object" do
      @p12.should be_an_instance_of Problem12
    end
  end
  
  it "should find the factors of 6 as 1, 2, 3, and 6" do
    @p12.factors(6).should eql [1,2,3,6]
  end
  
  it "should find the first 7 triangle numbers as 1, 3, 6, 10, 15, 21, 28" do
    @p12.triangles(7).should eql [1, 3, 6, 10, 15, 21, 28]
  end
  
  it "should find the first triangle number with 5 divisors as 28" do
    @p12.triangle_with_divisors(5).should eql 28
  end
  
  it "should find the first triangle number with 500 divisors as 76576500" do
    @p12.triangle_with_divisors(500).should eql 76576500
  end
end