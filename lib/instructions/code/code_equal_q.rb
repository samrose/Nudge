# pops the top 2 items of the +:code+ stack;
# pushes a new ValuePoint onto the +:bool+ stack, with value +true+ if the
# two items' blueprint strings are identical
#
# *needs:* 2 +:code+
#
# *pushes:* 1 +:bool+
#

class CodeEqualQInstruction < Instruction
  def preconditions?
    needs :code, 2
  end
  def setup
    @arg2 = @context.pop_value(:code)
    @arg1 = @context.pop_value(:code)
  end
  def derive
    c1 = NudgeProgram.new(@arg1).blueprint
    c2 = NudgeProgram.new(@arg2).blueprint
    @result = ValuePoint.new("bool", c1 == c2)
  end
  def cleanup
    pushes :bool, @result
  end
end
