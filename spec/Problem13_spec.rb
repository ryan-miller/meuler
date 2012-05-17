require_relative '../Problem13'

describe Problem13 do

  before :each do
    @p13 = Problem13.new
  end

  describe "#new" do
    it "takes no parameters and returns a Problem13 object" do
      @p13.should be_an_instance_of Problem13
    end
  end
  
  it "shoudld find the first 10 digits of the sum as 5373762303" do
    @p13.first_digits_of_sum(10).should eql 5373762303
  end
end