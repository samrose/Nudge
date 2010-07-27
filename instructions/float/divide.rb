# encoding: UTF-8
class FloatDivide < NudgeInstruction
  get 2, :float
  
  def process
    raise NudgeError::DivisionByZero, "cannot divide a float by 0.0" if float(0) == 0.0
    
    put :float, float(1) / float(0)
  end
end
