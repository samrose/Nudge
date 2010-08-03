# encoding: UTF-8
class IntRandom < NudgeInstruction
  def process
    min = @executable.instance_variable_get(:@min_int)
    max = @executable.instance_variable_get(:@max_int)
    
    put :int, (rand(max - min) + min).to_i
  end
end
