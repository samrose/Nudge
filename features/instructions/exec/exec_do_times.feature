#encoding: utf-8

Feature: exec_do_times instruction
  In order to create iteration and recursion
  As a modeler
  I want Nudge to include the Push3 code and exec iteration instructions
  
  
  Scenario: exec_do_times should execute the top :exec item for each integer in [n1, n2]
    Given I have pushed "ref bar" onto the :exec stack
    And I have pushed "3" onto the :int stack
    And I have pushed "5" onto the :int stack
    When I execute the Nudge instruction "exec_do_times"
    Then "ref bar" should be in position -1 of the :exec stack
    Then "block { value «int» value «int» do exec_do_times ref bar}\n«int» 4\n«int» 5" should be in position -2 of the :exec stack
    And stack :int should have depth 0
    And stack :exec should have depth 2
    
    
    
  Scenario: exec_do_times should execute the top :exec item for each integer in [n1, n2]
    Given I have pushed "ref j" onto the :exec stack
    And I have pushed "do exec_do_times" onto the :exec stack
    And I have pushed "3" onto the :int stack
    And I have pushed "5" onto the :int stack
    When I run the interpreter
    Then stack :name should have depth 3
    And "j" should be in position -1 of the :name stack
    And "j" should be in position -2 of the :name stack
    And "j" should be in position -3 of the :name stack
    And stack :int should have depth 0
    
    
    
  Scenario: exec_do_times should work OK for inverted indices
    Given I have pushed "ref bar" onto the :exec stack
    And I have pushed "-3" onto the :int stack
    And I have pushed "-58812" onto the :int stack
    When I execute the Nudge instruction "exec_do_times"
    Then "ref bar" should be in position -1 of the :exec stack
    Then "block { value «int» value «int» do exec_do_times ref bar}\n«int» -4\n«int» -58812" should be in position -2 of the :exec stack
    And stack :int should have depth 0
    And stack :exec should have depth 2
    
    
  Scenario: exec_do_times should not build its macro when the indices are identical
    Given I have pushed "ref bar" onto the :exec stack
    And I have pushed "32" onto the :int stack
    And I have pushed "32" onto the :int stack
    When I execute the Nudge instruction "exec_do_times"
    Then "ref bar" should be in position -1 of the :exec stack
    And stack :int should have depth 0
    And stack :exec should have depth 1
    
    
  Scenario: exec_do_times doesn't push its counter value to :int
    Given I have pushed "ref bar" onto the :exec stack
    And I have pushed "32" onto the :int stack
    And I have pushed "23" onto the :int stack
    When I execute the Nudge instruction "exec_do_times"
    Then stack :int should have depth 0
    
    
  Scenario: the item that's copied into the loop macro should be a different object from the item above it
    Given I have pushed "ref x" onto the :exec stack
    And I have pushed "1" onto the :int stack
    And I have pushed "13" onto the :int stack
    When I execute the Nudge instruction "exec_do_times"
    Then the block in position -2 of the :exec stack should not contain the object on position -1
  