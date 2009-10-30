class Instruction
  attr_reader :context
  
  @@all_instructions = []
  # @@active_instructions = []
  
  def self.inherited(subclass)
    @@all_instructions << subclass
    # @@active_instructions << subclass
    super
  end
  
  def self.all_instructions
    @@all_instructions
  end
  # 
  # def self.active_instructions
  #   @@active_instructions
  # end
  
  # def self.all_off
  #   @@active_instructions = []
  # end
  # 
  # def self.active?
  #   @@active_instructions.include? self
  # end
  # 
  # def self.deactivate
  #   @@active_instructions.delete self
  # end
  
  # def self.activate
  #   @@active_instructions << self unless @@active_instructions.include? self
  # end
  
  def self.to_nudgecode
    self.to_s.slice(0..-12).underscore
  end
  
  class NotEnoughStackItems < ArgumentError
  end
  
  class InstructionMethodError < RuntimeError
  end
  
  class NaNResultError < RuntimeError
  end
  
  def initialize(context)
    @context = context
  end
  
  def needs(stackName, minimum)
    iNeed = @context.stacks[stackName]
    
    if @context.stacks[stackName].depth < minimum
       raise NotEnoughStackItems
      return false
    else
      return true
    end
  end

  def pushes(stackName, literal)
    @context.stacks[stackName].push literal
  end
  
  def go
    begin
    if self.preconditions?
      self.setup
      self.derive
      self.cleanup
    end
    rescue NotEnoughStackItems
      logError("NOOP: Parameter shortage")
    rescue InstructionMethodError
       logError("NOOP: Calculation error")
    end
  end
  
  def preconditions?
    raise "Your Instruction class should define its own #preconditions? method"
  end
  
  def setup
    raise "Your Instruction class should define its own #setup method"
  end
  
  def derive
    raise "Your Instruction class should define its own #derive method"
  end
  
  def cleanup
    raise "Your Instruction class should define its own #cleanup method"
  end
  
  def logError(msg)
    # STDERR.puts msg
  end
  
end