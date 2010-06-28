require 'nudge'

%w(Bool Code Exec Float Int Name Proportion).each do |name|
  outcome_data = Outcome.new({})
  outcome_data.stacks[:bool].push "true"
  outcome_data.stacks[:bool].push "false"
  outcome_data.stacks[:code].push "block {}"
  outcome_data.stacks[:code].push "block { do int_add }"
  outcome_data.stacks[:exec].push NudgePoint.from("block {}")
  outcome_data.stacks[:exec].push NudgePoint.from("block { do int_add }")
  outcome_data.stacks[:float].push "1.0"
  outcome_data.stacks[:float].push "2.0"
  outcome_data.stacks[:int].push "1"
  outcome_data.stacks[:int].push "2"
  outcome_data.stacks[:name].push "x"
  outcome_data.stacks[:name].push "y"
  outcome_data.stacks[:proportion].push "0.1"
  outcome_data.stacks[:proportion].push "0.2"
  
  describe "#{name}Pop" do
    describe "#process()" do
      it "pops the top item off of the :#{name.downcase} stack" do
        expected_new_top_value = outcome_data.stacks[name.downcase.intern][-2]
        NudgeInstruction.execute(:"#{name.downcase}_pop", outcome_data)
        
        outcome_data.stacks[name.downcase.intern].pop.should == expected_new_top_value
      end
    end
  end
end
