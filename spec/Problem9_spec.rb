require_relative '../Problem9'

describe Problem9 do

  before :each do
    @p9 = Problem9.new
  end

  describe "#new" do
    it "takes no parameters and returns a Problem9 object" do
      @p9.should be_an_instance_of Problem9
    end
  end

  it "finds the pythagorean triplet for 25" do
    @p9.pythagorean_triplet(12).should eql 60
  end
  
  it "finds the pythagorean triplet for 1000" do
    @p9.pythagorean_triplet(1000).should eql 31875000
  end

 
end