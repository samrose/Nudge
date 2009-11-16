require File.join(File.dirname(__FILE__), "/../spec_helper")
include Nudge

theseInstructions = [
  BoolPopInstruction,
  BoolSwapInstruction,
  BoolDuplicateInstruction,
  BoolRotateInstruction
  ]
  
boolsTheyNeed = {
  BoolPopInstruction => 1,
  BoolSwapInstruction => 2,
  BoolDuplicateInstruction => 1,
  BoolRotateInstruction => 3
  }
  
resultTuples = {
  BoolPopInstruction => {[false, true]=>[false]},
  BoolSwapInstruction => {[false, true]=>[true, false]},
  BoolDuplicateInstruction => {[true] => [true, true]},
  BoolRotateInstruction => {[true, false, false] => [false, false, true]}
  }
    
theseInstructions.each do |instName|
  describe instName do
    before(:each) do
      @context = Interpreter.new
      @i1 = instName.new(@context)
    end
    
    it "should have its context right" do
      @i1.context.should == @context
    end
    
    [:preconditions?, :setup, :derive, :cleanup].each do |methodName|
      it "should respond to \##{methodName}" do
        @i1 = instName.new(@context)
        @i1.should respond_to(methodName)
      end   
    end
    
    describe "\#go" do
      before(:each) do
        @i1 = instName.new(@context)
        @context.clear_stacks
        @bool1 = LiteralPoint.new("bool", true)
      end
    
      describe "\#preconditions?" do
        it "should check that there are enough parameters" do
          10.times {@context.stacks[:bool].push(@bool1)}
          @i1.preconditions?.should == true
        end
        
        it "should raise an error if the preconditions aren't met" do
          @context.clear_stacks # there are no params at all
          lambda{@i1.preconditions?}.should raise_error(Instruction::NotEnoughStackItems)
        end
        
        it "should successfully run #go only if all preconditions are met" do
          5.times {@context.stacks[:bool].push(@bool1)}
          @i1.should_receive(:cleanup)
          @i1.go
        end
      end
      
      describe "\#cleanup" do
        describe "should restructure the stack" do
          examples = resultTuples[instName]
          examples.each do |inputs, finalStackState|
            params = inputs.inspect
            expected = finalStackState.inspect
            it "should end up with #{expected} on the \:bool stack, starting with #{params}" do
              inputs.each {|i| @context.stacks[:bool].push(LiteralPoint.new("bool", i))}
              @i1.go
              finalStackState.reverse.each {|i| @context.stacks[:bool].pop.value.should == i}
            end
          end
        end
      end
    end
  end
end


describe BoolDepthInstruction do
  before(:each) do
    @context = Interpreter.new
    @i1 = IntDepthInstruction.new(@context)
  end
  
  it "should have its context set" do
    @i1.context.should == @context
  end
  
  [:preconditions?, :setup, :derive, :cleanup].each do |methodName|
    it "should respond to \##{methodName}" do
      @i1.should respond_to(methodName)
    end   
  end
  
  describe "\#go" do
    before(:each) do
      @i1 = BoolDepthInstruction.new(@context)
      @context.clear_stacks
      @bool1 = LiteralPoint.new("bool", false)
    end
    
    describe "\#preconditions?" do
      it "should check that the :bool stack responds to #depth" do
        @i1.preconditions?.should == true
      end
    end
    
    describe "\#cleanup" do
      it "should count the items on the stack and push it onto the :int stack" do
        @context.stacks[:int].depth.should == 0
        @i1.go # there are no bools
        @context.stacks[:int].peek.value.should == 0
        7.times {@context.stacks[:bool].push @bool1}
        @i1.go
        @context.stacks[:int].peek.value.should == 7
      end
    end
  end
end


describe BoolFlushInstruction do
  before(:each) do
    @context = Interpreter.new
    @i1 = BoolFlushInstruction.new(@context)
  end
  
  it "should have a context upon creation" do
    @i1.context.should == @context
  end
  
  [:preconditions?, :setup, :derive, :cleanup].each do |methodName|
    it "should respond to \##{methodName}" do
      @i1.should respond_to(methodName)
    end   
  end
  
  describe "\#go" do
    before(:each) do
      @i1 = BoolFlushInstruction.new(@context)
      @context.clear_stacks
      @bool1 = LiteralPoint.new("bool", true)
    end
    
    describe "\#preconditions?" do
      it "should check that the :int stack responds to #depth" do
        @i1.preconditions?.should == true
      end
    end
    
    describe "\#cleanup" do
      it "should remove all items on the stack" do
        11.times {@context.stacks[:bool].push(@bool1)}
        @context.stacks[:bool].depth.should == 11
        @i1.go
        @context.stacks[:bool].depth.should == 0
      end
    end
  end
end



describe BoolShoveInstruction do
  before(:each) do
    @context = Interpreter.new
    @i1 = BoolShoveInstruction.new(@context)
  end
  
  it "should check its context is set" do
    @i1.context.should == @context
  end
  
  [:preconditions?, :setup, :derive, :cleanup].each do |methodName|
    it "should respond to \##{methodName}" do
      @i1.should respond_to(methodName)
    end   
  end
  
  describe "\#go" do
    before(:each) do
      @i1 = BoolShoveInstruction.new(@context)
      @context.clear_stacks
      @bool1 = LiteralPoint.new("bool", true)
    end
    
    describe "\#preconditions?" do
      it "should check that there is one :int and at least one :bool" do
        @context.stacks[:int].push(LiteralPoint.new("int", 4))
        @context.stacks[:bool].push(@bool1)
        @i1.preconditions?.should == true
      end
    end
    
    describe "\#cleanup" do
      before(:each) do
        @context.clear_stacks
        11.times {@context.stacks[:bool].push(@bool1)}
        @context.stacks[:bool].push(LiteralPoint.new("bool", false)) # making it 12 deep
      end
      
      it "should not move the top item if the integer is negative" do
        @context.stacks[:int].push(LiteralPoint.new("int", -99))
        @i1.go
        @context.stacks[:bool].depth.should == 12
        @context.stacks[:bool].peek.value.should == false
      end
      
      it "should not move the top item if the integer is zero" do
        @context.stacks[:int].push(LiteralPoint.new("int", 0))
        @i1.go
        @context.stacks[:bool].depth.should == 12
        @context.stacks[:bool].peek.value.should == false  
      end
      
      it "should move the top item farther down if the value is less than the depth" do
        @context.stacks[:int].push(LiteralPoint.new("int", 1000))
        @i1.go
        @context.stacks[:bool].depth.should == 12
        @context.stacks[:bool].entries[0].value.should == false
      end
      
      it "should move the top item to the bottom if the value is more than the depth" do
        @context.stacks[:int].push(LiteralPoint.new("int", 4))
        @i1.go
        @context.stacks[:bool].depth.should == 12
        @context.stacks[:bool].entries[11].value.should == true
        @context.stacks[:bool].entries[7].value.should == false
      end
      
    end
  end
end
