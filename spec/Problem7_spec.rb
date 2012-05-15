require_relative '../Problem7'

describe Problem7 do

  before :each do
    @p7 = Problem7.new
  end

  describe "#new" do
    it "takes no parameters and returns a Problem7 object" do
      @p7.should be_an_instance_of Problem7
    end
  end

  it "finds the 6th prime number as 13" do
    @p7.nth_prime(6).should eql 13
  end

  it "finds the 10,001st prime number as 104743" do
    @p7.nth_prime(10001).should eql 104743
  end
end