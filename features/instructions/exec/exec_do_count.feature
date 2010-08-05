#encoding: utf-8

Feature: exec_do_count
  In order to create iteration and recursion
  As a modeler
  I want Nudge to include the Push3 code and exec iteration instructions


  Scenario: exec_do_count should build a macro that will execute the :exec item n times
    Given I have pushed "do bool_and" onto the :exec stack
    And I have pushed "4" onto the :int stack
    When I execute the Nudge instruction "exec_do_count"
    Then "block { value «int» do exec_do_count do bool_and}\n«int» 3" should be in position -1 of the :exec stack
    And stack :exec should have depth 1
    And stack :int should have depth 0
    
    
  Scenario: exec_do_count stops building its macro when n==1
    Given I have pushed "do bool_and" onto the :exec stack
    And I have pushed "1" onto the :int stack
    When I execute the Nudge instruction "exec_do_count"
    Then "do bool_and" should be in position -1 of the :exec stack
    And stack :exec should have depth 1
    And stack :int should have depth 0
    
    
  Scenario: exec_do_count throws away the code for a 0 count
    Given I have pushed "do bool_and" onto the :exec stack
    And I have pushed "0" onto the :int stack
    When I execute the Nudge instruction "exec_do_count"
    And stack :exec should have depth 0
    And stack :int should have depth 0
    
    
  Scenario: exec_do_count creates an :error for a negative count
    Given I have pushed "do bool_and" onto the :exec stack
    And I have pushed "-281" onto the :int stack
    When I execute the Nudge instruction "exec_do_count"
    And stack :exec should have depth 0
    And stack :int should have depth 0
    And "exec_do_count called with negative counter" should be in position -1 of the :error stack
    
    
  Scenario: exec_do_count does not push a counter value
    Given I have pushed "do bool_and" onto the :exec stack
    And I have pushed "10" onto the :int stack
    When I execute the Nudge instruction "exec_do_count"
    And stack :int should have depth 0