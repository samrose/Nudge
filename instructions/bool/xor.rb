# encoding: UTF-8
class BoolXor < NudgeInstruction
  get 2, :bool
  
  def process
    put :bool, bool(0) != bool(1)
  end
end
