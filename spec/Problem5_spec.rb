require_relative '../Problem5'

describe Problem5 do

  before :each do
    @p5 = Problem5.new
  end

  describe "#new" do
    it "takes no parameters and returns a Problem5 object" do
      @p5.should be_an_instance_of Problem5
    end
  end

  it "confirms 2520 is the lowest multiple of all integers between 1 and 10" do
    @p5.lcmm(10,1).should eql 2520
  end


  it "confirms  is the lowest multiple of all integers between 1 and 100" do
    @p5.lcmm(20,1).should eql 232792560
  end

end