require_relative '../Problem4'

describe Problem4 do

  before :each do
    @p4 = Problem4.new
  end

  describe "#new" do
    it "takes no parameters and returns a P3 object" do
      @p4.should be_an_instance_of Problem4
    end
  end

  it "confirms 9009 is the largest palindrom from two 2 digit numbers" do
    @p4.largest_palindrome(99).should eql 9009
  end
  
  it "confirms 906609 is the largest palindrom from two 3 digit numbers" do
    @p4.largest_palindrome(999).should eql 906609
  end
  
  # test the other public methods

end