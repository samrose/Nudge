# encoding: UTF-8
class BoolDefine < NudgeInstruction
  get 1, :name
  get 1, :bool
  
  def process
    @executable.variable_bindings[name(0)] = Value.new(:bool, bool(0))
  end
end
