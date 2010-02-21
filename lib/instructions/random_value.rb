class IntRandomInstruction < Instruction
  def preconditions?
    true # no preconditions
  end
  def setup
  end
  def derive
    @result = ValuePoint.new("int", IntType.any_value)
  end
  def cleanup
    pushes :int, @result
  end
end


class BoolRandomInstruction < Instruction
  def preconditions?
    true # no preconditions
  end
  def setup
  end
  def derive
    @result = ValuePoint.new("bool", BoolType.any_value)
  end
  def cleanup
    pushes :bool, @result
  end
end


class FloatRandomInstruction < Instruction
  def preconditions?
    true # no preconditions
  end
  def setup
  end
  def derive
    @result = ValuePoint.new("float", FloatType.any_value)
  end
  def cleanup
    pushes :float, @result
  end
end
