# pops the top 2 items of the +:int+ stack;
# pushes a new ValuePoint onto the +:bool+ stack,
# with value +true+ if the second one is strictly less than the top one
#
# *needs:* 2 +:int+
#
# *pushes:* 1 +:bool+
#

class IntLessThanQInstruction < Instruction
  def preconditions?
    needs :int, 2
  end
  def setup
    @arg2 = @context.pop_value(:int)
    @arg1 = @context.pop_value(:int)
  end
  def derive
      @result = ValuePoint.new("bool", @arg1 < @arg2)
  end
  def cleanup
    pushes :bool, @result
  end
end
