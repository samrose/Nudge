#encoding: utf-8
require File.join(File.dirname(__FILE__), "/../spec_helper")
include Nudge

describe CodeEqualQInstruction do
  before(:each) do
    @context = Interpreter.new
    @i1 = CodeEqualQInstruction.new(@context)
  end
  
  it "should have its #context set to that Interpreter instance it's in" do
    @i1.context.should == @context
  end
  
  [:preconditions?, :setup, :derive, :cleanup].each do |methodName|
    it "should respond to \##{methodName}" do
      @i1.should respond_to(methodName)
    end   
  end 
  
  it "should check that there are enough parameters" do
    thing1 = ValuePoint.new("code", "block {ref x}")
    @context.stacks[:code].push thing1
    @context.stacks[:code].push thing1
    @i1.preconditions?.should == true
  end
  
  it "should raise an error if the preconditions aren't met" do
    @context.clear_stacks # there are no params at all
    lambda{@i1.preconditions?}.should raise_error(Instruction::NotEnoughStackItems)
  end
  
  it "should push the correct result to the :bool stack" do
    thing1 = ValuePoint.new("code", "ref x")
    thing2 = ValuePoint.new("code", "block {ref x}")
    @context.stacks[:code].push thing1
    @context.stacks[:code].push thing1
    @i1.go
    @context.stacks[:bool].peek.value.should == true
    
    @context.stacks[:code].push thing1
    @context.stacks[:code].push thing2
    @i1.go
    @context.stacks[:bool].peek.value.should == false
  end
  
  it "should not depend on the values, but the tidied program listings of the :code items" do
    thing1 = ValuePoint.new("code", "block { value «int» ref a}\n«int» 9182")
    thing2 = ValuePoint.new("code", "block {\nvalue   «int» ref \na  }\n«int»\t9182\n")
    @context.stacks[:code].push thing1
    @context.stacks[:code].push thing2
    @i1.go
    @context.stacks[:bool].peek.value.should == true
  end
end



describe ExecEqualQInstruction do
  before(:each) do
    @context = Interpreter.new
    @i1 = ExecEqualQInstruction.new(@context)
  end
  
  it "should have its #context set to that Interpreter instance it's in" do
    @i1.context.should == @context
  end
  
  [:preconditions?, :setup, :derive, :cleanup].each do |methodName|
    it "should respond to \##{methodName}" do
      @i1.should respond_to(methodName)
    end   
  end 
  
  it "should check that there are enough parameters" do
    thing1 = ValuePoint.new("code", "block {ref x}")
    @context.stacks[:exec].push thing1
    @context.stacks[:exec].push thing1
    @i1.preconditions?.should == true
  end
  
  it "should raise an error if the preconditions aren't met" do
    @context.clear_stacks # there are no params at all
    lambda{@i1.preconditions?}.should raise_error(Instruction::NotEnoughStackItems)
  end
  
  it "should push the correct result to the :bool stack" do
    thing1 = ValuePoint.new("code", "ref x")
    thing2 = ValuePoint.new("code", "block {ref x}")
    @context.stacks[:exec].push thing1
    @context.stacks[:exec].push thing1
    @i1.go
    @context.stacks[:bool].peek.value.should == true
    
    @context.stacks[:exec].push thing1
    @context.stacks[:exec].push thing2
    @i1.go
    @context.stacks[:bool].peek.value.should == false
  end
  
  it "should not depend on the values, but the tidied program listings of the :code items" do
    thing1 = NudgeProgram.new("block { value   «int» ref a  }\n«int» 9182").linked_code
    thing2 = NudgeProgram.new("block {\nvalue   «int»\tref \na  }\n«int» 9182").linked_code
    @context.stacks[:exec].push thing1
    @context.stacks[:exec].push thing2
    @i1.go
    @context.stacks[:bool].peek.value.should == true
  end
end