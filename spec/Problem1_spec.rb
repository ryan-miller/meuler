require_relative '../Problem1'

describe Problem1 do

  before :each do
    @p1 = Problem1.new
  end

  describe "#new" do
    it "takes no parameters and returns a P1 object" do
      @p1.should be_an_instance_of Problem1
    end
  end

  it "it returns 23 when looking at first 10 naturals" do
    @p1.sum_multiples_of_3_or_5_below(10).should eql 23
  end

  it "it returns 233168 when looking at first 1000 naturals" do
    @p1.sum_multiples_of_3_or_5_below(1000).should eql 233168
  end

end