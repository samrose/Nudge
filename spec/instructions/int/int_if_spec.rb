require File.join(File.dirname(__FILE__), "../../spec_helper")
include Nudge

describe IntIfInstruction do
  
  it_should_behave_like "every Nudge Instruction"
  
  before(:each) do
    @context = Interpreter.new
    @i1 = IntIfInstruction.new(@context)
  end
  
  
  describe "\#go" do
    before(:each) do
      @context = Interpreter.new
      @i1 = IntIfInstruction.new(@context)
      @v1 = ValuePoint.new("int",  1)
      @v2 = ValuePoint.new("int", -100)
    end

    describe "\#preconditions?" do
      it "should check that there are two items on the target stack and at least one :bool" do
        @context.stacks[:int].push(@v1)
        @context.stacks[:int].push(@v2)
        @context.stacks[:bool].push(ValuePoint.new("bool", true))
        @i1.preconditions?.should == true
      end
    end

    describe "\#cleanup" do
      it "should keep the SECOND :int if the :bool is true, otherwise the top one" do
        @context.stacks[:int].push(@v1)
        @context.stacks[:int].push(@v2)
        @context.stacks[:bool].push(ValuePoint.new("bool", true))
        @i1.go
        @context.stacks[:int].depth.should == 1
        @context.stacks[:int].peek.value.should == 1
        
        @context.stacks[:int].push(@v1)
        @context.stacks[:int].push(@v2)
        @context.stacks[:bool].push(ValuePoint.new("bool", false))
        @i1.go
        @context.stacks[:int].peek.value.should == -100
      end
    end
  end
end
