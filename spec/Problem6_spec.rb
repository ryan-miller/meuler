require_relative '../Problem6'

describe Problem6 do

  before :each do
    @p6 = Problem6.new
  end

  describe "#new" do
    it "takes no parameters and returns a Problem6 object" do
      @p6.should be_an_instance_of Problem6
    end
  end

  it "solves for the first 10 naturals as 2640" do
    @p6.solve_for(1..10).should eql 2640
  end

  it "solves for the first 100 naturals as 25164150" do
    @p6.solve_for(1..100).should eql 25164150
  end
end