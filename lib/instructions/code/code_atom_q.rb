class CodeAtomQInstruction < Instruction
  def preconditions?
    needs :code, 1
  end
  def setup
    arg_blueprint = @context.pop_value(:code)
    @arg1 = NudgeProgram.new(arg_blueprint)
  end
  def derive
    atomQ = @arg1.parses? && @arg1.points == 1
    @result = ValuePoint.new("bool", atomQ)
  end
  def cleanup
    pushes :bool, @result
  end
end
