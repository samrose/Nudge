Feature: Conditional instructions
  In order to search for branching algorithms
  As a modeler
  I want the Nudge language to include a set of conditional instructions "x_if"
  
  Scenario Outline: x_if
    Given two values "<arg1>" and "<arg2>" on stack "<stack>"
    And a :bool value with value "<t_or_f>"
    When I execute instruction "<instruction>"
    Then only "<result>" should be left on stack :x
    And the other arguments should be gone
    
    Examples: float_if
    | arg1 | arg2 | stack  | t_or_f | instruction | result |
    | 3.3  | 7.77 | float | true   | do float_if | 3.3    |
    | 3.3  | 7.77 | float | false  | do float_if | 7.77   |
    
    
    Examples: int_if
    | arg1 | arg2 | stack | t_or_f | instruction | result |
    | 1    | 222  | int  | true   | do int_if   | 1      |
    | 1    | 222  | int  | false  | do int_if   | 222    |
    
    
    Examples: code_if
    | arg1  | arg2 | stack | t_or_f | instruction | result |
    | ref a | do x | code  | true   | do code_if  | ref a  |
    | ref a | do x | code  | false  | do code_if  | do x   |
    
    
    Examples: exec_if
    | arg1  | arg2 | stack | t_or_f | instruction | result |
    | ref a | do x | exec  | true   | do exec_if  | ref a  |
    | ref a | do x | exec  | true   | do exec_if  | do x   |
    
    
    Examples: proportion_if
    | arg1  | arg2 | stack      | t_or_f | instruction      | result |
    | 0.222 | 0.88 | proportion | true   | do proportion_if | 0.222  |
    | 0.222 | 0.88 | proportion | false  | do proportion_if | 0.88   |
    
    
    Examples: name_if
    | arg1 | arg2 | stack | t_or_f | instruction | result |
    | x1   | foo  | name  | true   | do name_if  | x1     |
    | x1   | foo  | name  | false  | do name_if  | foo    |
    