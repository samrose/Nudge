# encoding: UTF-8
class Executable
  def initialize (script)
    @point = NudgePoint.from(script)
    @variable_bindings = {}
  end
  
  def bind (variable_bindings)
    @variable_bindings = variable_bindings
    self
  end
  
  def run
    outcome_data = Outcome.new(@variable_bindings)
    error_stack = outcome_data.stacks[:error]
    exec_stack = outcome_data.stacks[:exec]
    exec_stack.push(@point)
    
    while point = exec_stack.pop
      begin
        point.evaluate(outcome_data.begin)
      rescue NudgeError => error
        error_stack.push(error.string)
        break if [NudgeError::TimeLimitExceeded, NudgeError::TooManyPointsEvaluated].include?(error.class)
      end
    end
    
    outcome_data.end
  end
end
