require File.join(File.dirname(__FILE__), "/../spec_helper")
include Nudge

describe "erc" do
  
  describe "initialization" do
    it "should take a type name with no default value" do
      myE = Erc.new("int")
      myE.type.should == "int"
      lambda {Erc.new()}.should raise_error(ArgumentError)
    end
    
    it "should take an optional value, defaulting to nil" do
      myE = Erc.new("int",12)
      myE.value.should == 12
    end
    
    it "should be created with a default randomizer that returns current value"
    
    it "should allow you to set a new randomizer"
  end
    
  describe "randomization" do
    it "should demand the randomizer is a Proc object that returns a value"
    
    it "should invoke the attribute's randomizer code when Erc#randomize is called"
    
    it "should be possible to temporarily override the randomize code with a block"
  end
  
  describe "converting to a literal" do
    it "should allow you to cast it to a Literal with the same values"
  end
  
  describe "inspection" do
    it "should print 'ERC(value,type) for Erc#inspect"
  end
  
end