Feature: Code manipulation errors
  In order to avoid models that break when performing complex :code manipulations
  As a modeler
  I want :code instructions to create :error items when they fail
    
  Scenario: code_container should return an :error if its arg1 can't be parsed
    Given an interpreter with "bbbbbbbbbbb" on the :code stack
    And "block {block {value «int» ref x}} \n«int» 99" above that
    When I execute "do code_container"
    Then the original arguments should be gone
    And the :error stack should contain "code_container cannot parse an argument"
    
    
  Scenario: code_container should return an :error if its arg2 can't be parsed
    Given an interpreter with "block {}" on the :code stack
    And "kjanskdjnaskld" above that
    When I execute "do code_container"
    Then the original arguments should be gone
    And the :error stack should contain "code_container cannot parse an argument"
    
    
    
    
  Scenario: code_contains_q should return an :error if its arg1 can't be parsed
    Given an interpreter with "askjdnkajsndkas" on the :code stack
    And "block {}" above that
    When I execute "do code_contains_q"
    Then the original arguments should be gone
    And the :error stack should contain "code_contains_q cannot parse an argument"
    
    
  Scenario: code_contains_q should return an :error if its arg2 can't be parsed
    Given an interpreter with "do x" on the :code stack
    And "099" above that
    When I execute "do code_contains_q"
    Then the original arguments should be gone
    And the :error stack should contain "code_contains_q cannot parse an argument"
    
    
    
    
    
    
  Scenario: code_gsub should return an :error if arg1 is unparseable
    Given an interpreter with "rooty toot toot" on the :code stack
    And "value «int» \n «int» 9" above that
    And "do a" above that
    When I execute "do code_gsub"
    Then the original arguments should be gone
    And the :error stack should contain "code_gsub cannot parse an argument"
    
    
  Scenario: code_gsub should return an :error if arg2 is unparseable
    Given an interpreter with "ref x" on the :code stack
    And "hoo dee doo" above that
    And "do a" above that
    When I execute "do code_gsub"
    Then the original arguments should be gone
    And the :error stack should contain "code_gsub cannot parse an argument"
    
    
  Scenario: code_gsub should return an :error if arg3 is unparseable
    Given an interpreter with "ref x" on the :code stack
    And "do a" above that
    And "tra la la" above that
    When I execute "do code_gsub"
    Then the original arguments should be gone
    And the :error stack should contain "code_gsub cannot parse an argument"
    
    
    
    
  Scenario: code_list should return an error if its arg1 can't be parsed
    Given an interpreter with "not a valid block" on the :code stack
    And "block {do a}" above that
    When I execute "do code_list"
    Then the original arguments should be gone
    And the :error stack should contain "code_list cannot parse an argument"
    
    
  Scenario: code_list should return an error if its arg2 can't be parsed
    Given an interpreter with "ref x" on the :code stack
    And "nor this one" above that
    When I execute "do code_list"
    Then the original arguments should be gone
    And the :error stack should contain "code_list cannot parse an argument"
    
    
    
    
  Scenario: code_nth should create an error if an empty block is the arg
    Given an interpreter with "block {}" on the :code stack
    And "2" on the :int stack
    When I execute "do code_nth"
    Then the original arguments should be gone
    And the :error stack should contain "code_nth cannot work on empty blocks"
    
    
    
    
  Scenario: code_nth_cdr should return an error if its argument can't be parsed
    Given an interpreter with "whooo boyo" on the :code stack
    And "2" on the :int stack
    When I execute "do code_nth_cdr"
    Then the original arguments should be gone
    And the :error stack should contain "code_nth_cdr cannot parse an argument"
    
    
    
    
  Scenario: code_nth_point should create an :error if the code can't be parsed
    Given an interpreter with "with this laurel, and hardy handshake" on the :code stack
    And "3" on the :int stack
    When I execute "do code_nth_point"
    Then the original arguments should be gone
    And the :error stack should contain "code_nth_point cannot parse an argument"
    
    
    
    
  Scenario: code_position should return an error if arg1 can't be parsed
    Given an interpreter with "88888888" on the :code stack
    And "ref x" on the :code stack above that
    When I execute "do code_position"
    Then the original arguments should be gone
    And the :error stack should contain "code_position cannot parse an argument"
    
    
  Scenario: code_position should return an error if arg2 can't be parsed
    Given an interpreter with "block {}" on the :code stack
    And "8887766" on the :code stack above that
    When I execute "do code_position"
    Then the original arguments should be gone
    And the :error stack should contain "code_position cannot parse an argument"
    
    
    
    
  Scenario: code_replace_nth_point should return an :error if arg1 can't be parsed
    Given an interpreter with "kjkdksjfdasdf" on the :code stack
    And "ref x" on the :code stack above that
    And "1" on the :int stack
    When I execute "do code_replace_nth_point"
    Then the original arguments should be gone
    And the :error stack should contain "code_replace_nth_point cannot parse an argument"
    
    
  Scenario: code_replace_nth_point should return an :error if arg2 can't be parsed
    Given an interpreter with "block {}" on the :code stack
    And "kjnskdjnlasjdf" on the :code stack above that
    And "1" on the :int stack
    When I execute "do code_replace_nth_point"
    Then the original arguments should be gone
    And the :error stack should contain "code_replace_nth_point cannot parse an argument"
    
