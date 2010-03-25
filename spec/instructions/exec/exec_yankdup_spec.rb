#encoding: utf-8
require File.join(File.dirname(__FILE__), "../../spec_helper")
include Nudge


describe ExecYankdupInstruction do
  
  it_should_behave_like "every Nudge Instruction"
  
  before(:each) do
    @context = Interpreter.new
    @i1 = ExecYankdupInstruction.new(@context)
  end
    
  describe "\#go" do
    before(:each) do
      @context.clear_stacks
      @i1 = ExecYankdupInstruction.new(@context)
    end
    
    describe "\#preconditions?" do
      it "should check that there is one :int and at least one :exec item" do
        @context.reset("block {}")
        @context.stacks[:int].push(ValuePoint.new("int",2))
        @i1.preconditions?.should == true
      end
    end
    
    describe "\#cleanup" do
      before(:each) do
        @context.clear_stacks
        (1..3).each {|i| @context.stacks[:exec].push(ValuePoint.new("float",i*1.0))}
      end
      
      it "should duplicate the top item if the position integer is negative" do
        @context.stacks[:int].push(ValuePoint.new("int", -99))
        @i1.go
        and_now = @context.stacks[:exec].entries.collect {|i| i.value}
        and_now.should == [1.0,2.0,3.0,3.0]
      end
      
      it "should duplicate the top item if the position integer is zero" do
        @context.stacks[:int].push(ValuePoint.new("int", 0))
        @i1.go
        and_now = @context.stacks[:exec].entries.collect {|i| i.value}
        and_now.should == [1.0,2.0,3.0, 3.0]
      end
      
      it "should clone the bottom item and push it if the position is more than the stackdepth" do
        @context.stacks[:int].push(ValuePoint.new("int", 1000))
        @i1.go
        and_now = @context.stacks[:exec].entries.collect {|i| i.value}
        and_now.should == [1.0,2.0,3.0, 1.0]
      end
      
      it "should push a copy of the indicated item to the top of the stack, counting from the 'top down'" do
        @context.stacks[:int].push(ValuePoint.new("int", 2))
        @i1.go
        and_now = @context.stacks[:exec].entries.collect {|i| i.value}
        and_now.should == [1.0,2.0,3.0, 1.0]
        
        @context.stacks[:int].push(ValuePoint.new("int", 2))
        @i1.go
        and_now = @context.stacks[:exec].entries.collect {|i| i.value}
        and_now.should == [1.0,2.0,3.0, 1.0, 2.0]
      end
    end
  end
end
