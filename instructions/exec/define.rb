class Instruction::ExecDefine < Instruction
  get 1, :name
  get 1, :exec
  
  def process
    key = name(0)
    bindings = @outcome_data.variable_bindings
    
    if bindings.key?(key)
      # raise
    end
    
    bindings[key] = ValuePoint.new(:exec, exec(0))
  end
end