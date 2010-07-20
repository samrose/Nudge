Feature: Stack manipulation instructions
  In order to implement methods that shuffle data
  As a programmer
  I want Nudge instructions that move stuff around predictably in any stack
  
  
    
    
  Scenario: x_equal_q instructions
    Given there are two item with value V1 and V2 on a stack named :x
    When I execute the Nudge code 'do x_equal_q'
    Then a new item should be pushed onto :bool
    And its value should be true iff V1==V2
    
    
    
    
    
  Scenario: x_yank standard behavior
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [B, B, B, A, B, B]
    And an item on the :int stack with value '3'
    When I execute the Nudge code 'do x_yank'
    Then the order of the values on the :x stack will be [A, B, B, B, B, B]
    And the :int will have disappeared


  Scenario: x_yank with negative value does nothing
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [B, B, B, B, A, B]
    And an item on the :int stack with value '-2'
    When I execute the Nudge code 'do x_yank'
    Then the order of the values on the :x stack will be [B, B, B, B, A, B]
    And the :int will have disappeared


  Scenario: x_yank with zero value does nothing
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [B, A, B, B, B, B]
    And an item on the :int stack with value '0'
    When I execute the Nudge code 'do x_yank'
    Then the order of the values on the :x stack will be [B, A, B, B, B, B]
    And the :int will have disappeared


  Scenario: x_yank with huge value yanks bottom item
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [B, B, B, B, B, A]
    And an item on the :int stack with value '66661'
    When I execute the Nudge code 'do x_yank'
    Then the order of the values on the :x stack will be [A, B, B, B, B, B]
    And the :int will have disappeared
    
    
  Scenario: x_yankdup standard behavior
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [C, B, B, A, B, B]
    And an item on the :int stack with value '3'
    When I execute the Nudge code 'do x_yankdup'
    Then there will be 7 items on :x
    And the order of the values on the :x stack will be [A, C, B, B, A, B, B]
    And the :int will have disappeared
    
    
  Scenario: x_yankdup with negative value just dupes the top item
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [C, B, B, B, A, B]
    And an item on the :int stack with value '-2'
    When I execute the Nudge code 'do x_yankdup'
    Then the order of the values on the :x stack will be [C, C, B, B, B, A, B]
    And the :int will have disappeared
    
    
  Scenario: x_yankdup with zero value just dupes the top item
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [C, A, B, B, B, B]
    And an item on the :int stack with value '0'
    When I execute the Nudge code 'do x_yankdup'
    Then the order of the values on the :x stack will be [C, C, A, B, B, B, B]
    And the :int will have disappeared
    
    
  Scenario: x_yankdup with huge value yanks bottom item
    Given there is 6 items on a stack named :x
    And their values are (top to bottom) [C, B, B, B, B, A]
    And an item on the :int stack with value '66661'
    When I execute the Nudge code 'do x_yankdup'
    Then the order of the values on the :x stack will be [A, C, B, B, B, B, A]
    And the :int will have disappeared