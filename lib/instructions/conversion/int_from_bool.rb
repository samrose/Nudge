# pops the top +:bool+ item;
# pushes a new +:int+ item,
# with value 0 when the +:bool+ is +false+, otherwise 1
#
# *needs:* 1 +:bool+
#
# *pushes:* 1 +:int+
#

class IntFromBoolInstruction < Instruction
  def preconditions?
    needs :bool, 1
  end
  def setup
    @arg = @context.pop_value(:bool)
  end
  def derive
    @result = ValuePoint.new("int", @arg ? 1 : 0)
  end
  def cleanup
    pushes :int, @result
  end
end
