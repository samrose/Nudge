require File.join(File.dirname(__FILE__), "./../../spec_helper")
include Nudge

describe "ResampleValues search operator" do
  
  it "should not need any initial parameters" do
    lambda{ResampleValues.new()}.should_not raise_error
  end
  
  it "should be possible to pass in stored parameters" do
    lambda{ResampleValues.new(:randomIntegerLowerBound => 12)}.should_not raise_error
    rs = ResampleValues.new({:boolTrueProbability => 0.2})
    rs.params.should include(:boolTrueProbability)
  end
  
  describe "generate" do
    before(:each) do
      @rs = ResampleValues.new({:boolTrueProbability => 0.2})
      @intDude = Individual.new("block {sample int(3)}")
      @boolDude = Individual.new("block {sample bool(false)}")
      @floatDude = Individual.new("block {sample float(-991.2213)}")
      @complicatedDude = Individual.new("block {sample int(3) sample bool(false) block {sample float(0.0)}}")
    end
    
    it "should require an Array as a first parameter" do
      lambda{@rs.generate()}.should raise_error(ArgumentError)
      lambda{@rs.generate([])}.should_not raise_error(ArgumentError)
    end
    
    it "should raise an ArgumentError if the array parameter isn't all Individuals" do
      lambda{@rs.generate([88])}.should raise_error(ArgumentError)
      lambda{@rs.generate([@intDude])}.should_not raise_error(ArgumentError)
    end
    
    it "should by default produce one (1) resampled mutant for each input" do
      @rs.generate([@intDude]).length.should == 1
      @rs.generate([@intDude, @intDude]).length.should == 2
    end
    
    it "should call #random_value for each line in each individual that is a 'sample'" do
      IntType.should_receive(:random_value).and_return(777)
      newGuys = @rs.generate([@intDude])
      BoolType.should_receive(:random_value).and_return(false)
      newGuys = @rs.generate([@boolDude])
      FloatType.should_receive(:random_value).and_return(9.999)
      newGuys = @rs.generate([@floatDude])
      IntType.should_receive(:random_value).and_return(777)
      BoolType.should_receive(:random_value).and_return(false)
      FloatType.should_receive(:random_value).and_return(9.999)
      newGuys = @rs.generate([@complicatedDude])
      
      IntType.should_receive(:random_value).and_return(1,2)
      BoolType.should_receive(:random_value).and_return(false,true)
      FloatType.should_receive(:random_value).and_return(1.0,2.0)
      newGuys = @rs.generate([@intDude,@boolDude,@floatDude,@complicatedDude],1)
      newGuys[0].genome.should include "1"
      newGuys[1].genome.should include "false"
      newGuys[2].genome.should include "1.0"
      newGuys[3].genome.should include "2.0"
    end
    
    it "should be possible to pass in a higher integer, and get that many variants for each input" do
      IntType.should_receive(:random_value).and_return(11,22,33)
      newGuys = @rs.generate([@intDude],3)
      newGuys[0].genome.should include("11")
      newGuys[1].genome.should include("22")
      newGuys[2].genome.should include("33")
      
      IntType.should_receive(:random_value).and_return(4,5,6,7)
      newGuys = @rs.generate([@intDude, @intDude],2)
    end
    
    it "should be using the Operator's saved parameters as a default behavior" do
      wholeLottaParams = {
        :randomIntegerLowerBound => 1000,
        :randomIntegerUpperBound => 1005,
        :randomBooleanTruthProb => 0.2,
        :randomFloatLowerBound => 112.0,
        :randomFloatUpperBound => 112.5}
      
      resampleLimited = ResampleValues.new(wholeLottaParams)
      
      IntType.should_receive(:random_value).with(wholeLottaParams)
      newGuys = resampleLimited.generate([@intDude])
      
      BoolType.should_receive(:random_value).with(wholeLottaParams)
      newGuys = resampleLimited.generate([@boolDude])
      
      FloatType.should_receive(:random_value).with(wholeLottaParams)
      newGuys = resampleLimited.generate([@floatDude])
    end
    
    it "should return Individuals who (probably) differ from the originals passed in" do
      outOfRangeParams = {
        :randomIntegerLowerBound => 1000,
        :randomIntegerUpperBound => 1005,
        :randomBooleanTruthProb => 1.0,
        :randomFloatLowerBound => 112.0,
        :randomFloatUpperBound => 112.5}
      resampleFarAway = ResampleValues.new(outOfRangeParams)
      newGuys = resampleFarAway.generate([@intDude])
      newGuys[0].genome.should =~ /100[0-5]/
      newGuys = resampleFarAway.generate([@boolDude])
      newGuys[0].genome.should =~ /true/
      newGuys = resampleFarAway.generate([@floatDude])
      newGuys[0].genome.should =~ /112\.[0-5]/
    end
    
    it "should be possible to temporarily override some or all of the preset @params" do
      bigInt = {:randomIntegerLowerBound => 90000,:randomIntegerUpperBound => 91000}
      toBeOverridden = ResampleValues.new(bigInt)
      defaults = toBeOverridden.generate([@intDude],5)
      defaults.each {|dude| dude.genome.should =~ /9\d\d\d\d/}
      
      littler = toBeOverridden.generate([@intDude],5,
        :randomIntegerLowerBound => -19, :randomIntegerUpperBound => -10)
      littler.each {|dude| dude.genome.should =~ /-1\d/}
    end
    
  end
  
end