# encoding: UTF-8
require 'spec_helper'


describe "FloatDivmod" do
  before(:each) do
    @context = NudgeExecutable.new("")
    @inst = FloatDivmod.new(@context)
  end
  
  describe "arguments" do
    it "should take two :float args" do
      FloatDivmod::REQUIREMENTS.should == {float:2}
    end
  end
  
  describe "#process" do
    it "should return two :floats just as with Knuth's (and Ruby's) divmod method" do
      @context.stacks[:float] << "23.5" << "21.0"
      @inst.execute
      @context.stacks[:float].should == ["1", "2.5"]
    end
    
    it "should produce an :error if the result is Infinity" do
      @context.stacks[:float] << "5.9e+265" << "1.0e-89"
      @context.stacks[:exec] << NudgePoint.from("do float_divmod")
      @context.run
      
      @context.stacks[:float].should == []
      @context.stacks[:error][-1].should include("NaN")
    end
    
    it "should produce an :error if the result is -Infinity" do
      @context.stacks[:float] << "-5.9e+265" << "1.0e-89"
      @context.stacks[:exec] << NudgePoint.from("do float_divmod")
      @context.run
      
      @context.stacks[:float].should == []
      @context.stacks[:error][-1].should include("NaN")
    end    
  end
  
  describe "effects" do
    it "should push the result onto the :float stack" do
      @context.stacks[:float] << "12" << "5"
      @inst.execute
      @context.stacks[:float].length.should == 2
    end
  end
end
