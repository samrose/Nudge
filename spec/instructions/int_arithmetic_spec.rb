require File.join(File.dirname(__FILE__), "/../spec_helper")
include Nudge

describe "IntAddInstruction" do
  it "should be a singleton" do
    i1 = IntAddInstruction.instance
    i2 = IntAddInstruction.instance
    i1.should === i2
  end
  
  [:preconditions?, :go, :outcomes].each do |methodName|
    before(:each) do
      @i1 = IntAddInstruction.instance
    end
    it "should respond to #{methodName}" do
      @i1.should respond_to(methodName)
    end 
  end
  
  describe "three phases of #going" do
    before(:each) do
      @i1 = IntAddInstruction.instance
      Stack.cleanup
      @int1 = LiteralPoint.new("int", 6)
    end
    
    describe "#preconditions?" do
      it "should check that there are at least 2 ints" do
        2.times {Stack.push!(:int,@int1)}
        Stack.stacks[:int].depth.should == 2
        @i1.preconditions?.should == true
      end

      it "should raise an error if the preconditions aren't met" do
        1.times {Stack.push!(:int,@int1)}
        lambda{@i1.preconditions?}.should raise_error(Instruction::NotEnoughStackItems)
      end

      it "should successfully run #go only if all preconditions are met" do
        Stack.push!(:int,@int1)
        Stack.push!(:int,@int1)
        @i1.should_receive(:outcomes)
        @i1.go
      end
    end

    describe "#go" do
      it "should pop the arguments" do
        2.times {Stack.push!(:int,@int1)}
        Stack.stacks[:int].depth.should == 2
        @i1.stub!(:outcomes) # and do nothing
        @i1.go
        Stack.stacks[:int].depth.should == 0
      end
      
      it "determine the result value" do
        2.times {Stack.push!(:int,@int1)}
        Stack.stacks[:int].depth.should == 2
        @i1.stub!(:outcomes) # and do nothing
        @i1.go
        @i1.result.value.should == 12
      end
      
      it "should raise the right exceptions if a bad thing happens" do
        pending
      end
      
    end

    describe "#outcomes" do
      it "should push! the result" do
        2.times {Stack.push!(:int,@int1)}
        @i1.go
        Stack.stacks[:int].peek.value.should == 12
      end
      
      it "should raise the right exception if something bad happens" do
        pending
      end
    end
    
    
  end
  
end