#encoding: utf-8
Feature: bool_not
  In order to describe and manipulate discrete logical variables
  As a modeler
  I want a to be able to invoke the simplest Boolean operator
  
  Scenario Outline: basic arity-1 :bool instructions
    Given I have pushed "<arg1>" onto the :<stack> stack
    When I execute the Nudge instruction "<instruction_name>"
    Then "<result>" should be in position <pos1> of the :<result_stack> stack
    And stack :<result_stack> should have depth <final_depth>
    
    Examples:
      | arg1  | stack | instruction_name | result | pos1 | result_stack | final_depth |
      | true  | bool  | bool_not         | false  | 0    | bool         | 1           |
      | false | bool  | bool_not         | true   | 0    | bool         | 1           |
