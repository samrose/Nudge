# pops the top 2 items of the +:int+ stack;
# pushes a new ValuePoint onto the +:int+ stack with the largest of the two values
#
# *needs:* 2 +:int+
#
# *pushes:* 1 +:int+
#

class IntMaxInstruction < Instruction
  def preconditions?
    needs :int, 2
  end
  def setup
    @arg2 = @context.pop_value(:int)
    @arg1 = @context.pop_value(:int)
  end
  def derive
      @max = [@arg1,@arg2].max
      @result = ValuePoint.new("int", @max)
  end
  def cleanup
    pushes :int, @result
  end
end
