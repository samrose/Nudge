#encoding: utf-8
Feature: exec_define
  In order to work with programs referring to values
  As a modeler
  I want a exec_define instruction
    
  Scenario: exec_define instruction binds top :exec item to a new ref
    Given I have pushed "block {}" onto the :exec stack
    And I have pushed "x1" onto the :name stack
    When I execute the Nudge instruction "exec_define"
    Then name "x1" should be bound to "block {  }"
    And stack :name should have depth 0
    And stack :exec should have depth 0
    
    
  Scenario: exec_define instruction rebinds when given a name ref
    Given I have pushed "ref g" onto the :exec stack
    And I have pushed "x1" onto the :name stack
    And "x1" is bound to a :exec with value "block {}"
    When I execute the Nudge instruction "exec_define"
    Then name "x1" should be bound to "ref g"
    And stack :name should have depth 0
    And stack :exec should have depth 0

  Scenario: the thing that's bound to a name is not identical to the object on the :exec stack
    Given I have pushed "do int_add" onto the :exec stack
    And I have noted the object_id of the item in position 9 of stack :exec
    And I have pushed "j" onto the :name stack
    When I execute the Nudge instruction "exec_define"
    Then the object_id of the item bound to name "j" should not be identical to the original