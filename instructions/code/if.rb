class Instruction::CodeIf < Instruction
  get 1, :bool
  get 2, :code
  
  def process
    put :code, bool(0) ? code(0) : code(1)
  end
end