class Instruction::ExecShove < Instruction
  get 1, :int
  
  def process
    stack = @outcome_data.stacks[:exec]
    return if stack.length < 2
    
    position = int(0)
    
    case
      when position <= 0
      when position >= stack.length then stack.unshift(stack.pop)
      else stack.insert(stack.length - 1 - position, stack.pop)
    end
  end
end