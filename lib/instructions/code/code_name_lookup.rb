class CodeNameLookupInstruction < Instruction  # was Push3 CODE.DEFINITION
  def preconditions?
    needs :name, 1
  end
  def setup
    @the_reference = @context.pop_value(:name)
  end
  def derive
    bound_value = @context.variables[@the_reference] || @context.names[@the_reference] || nil
    if bound_value != nil
      @result = ValuePoint.new("code", bound_value.listing)
    else
      @result = ValuePoint.new("code", "")
    end
  end
  def cleanup
    pushes :code, @result
  end
end
