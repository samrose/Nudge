# encoding: UTF-8
class IntDuplicate < NudgeInstruction
  get 1, :int
  
  def process
    put :int, int(0)
    put :int, int(0)
  end
end
