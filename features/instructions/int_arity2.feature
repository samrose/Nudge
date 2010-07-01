Feature: Integer arity-2 math instructions
  In order to describe and manipulate integer numerical variables
  As a modeler
  I want a suite of :int Nudge arithmetic instructions
  
  Scenario Outline: basic arity-2 instructions
    Given I have placed "<arg1>" on the :int stack
    And I have placed "<arg2>" on top of that
    When I execute the Nudge code "<instruction>"
    Then the value "<result>" should be on top of the :int stack
    And a message "<error_msg>" should be on the :error stack
    And the arguments should not remain on :int
    
    Examples: int_add
      | arg1   | arg2   | instruction | result | error_msg |
      |    6   |    5   | do int_add  |   11   | |
      |   -9   |    4   | do int_add  |   -5   | |
      |   -3   |  -11   | do int_add  |  -14   | |
      |    0   |  -11   | do int_add  |  -11   | |
      

    Examples: int_divide
      | arg1   | arg2  | instruction    | result  | error_msg |
      |   8    |    2  | do int_divide  |   4     | |
      |  12    |   -3  | do int_divide  |  -4     | |
      | -20    |    4  | do int_divide  |  -5     | |
      | -40    |   -8  | do int_divide  |   5     | |
      |  10    |    6  | do int_divide  |   1     | |
      |   6    |   10  | do int_divide  |   0     | |
      |  -3    |    5  | do int_divide  |   0     | |
      |   5    |   -3  | do int_divide  |  -1     | |
      |   0    |    1  | do int_divide  |   0     | |
      |   1    |   -0  | do int_divide  |         | "int_divide cannot divide by 0" |
      |   0    |    0  | do int_divide  |         | "int_divide cannot divide by 0" |
      
      
    Examples: int_max
      | arg1 | arg2 | instruction | result | error_msg |
      |  12  |   1  | do int_max  |  12    | |
      |   1  |  12  | do int_max  |  12    | |
      |  -2  |   2  | do int_max  |   2    | |
      |   3  |   3  | do int_max  |   3    | |


    Examples: int_min
      | arg1 | arg2 | instruction | result | error_msg |
      |  12  |   1  | do int_min  |   1    | |
      |   1  |  12  | do int_min  |   1    | |
      |  -2  |   2  | do int_min  |  -2    | |
      |   3  |   3  | do int_min  |   3    | |
      
      
    Examples: int_modulo
      | arg1 | arg2 | instruction   | result | error_msg |
      |  9   |   3  | do int_modulo |  0     | |
      |  9   |  -3  | do int_modulo |  0     | |
      | -9   |  -3  | do int_modulo |  0     | |
      | -9   |   3  | do int_modulo |  0     | |
      |  8   |   3  | do int_modulo |  2     | |
      |  8   |  -3  | do int_modulo | -1     | |
      | -8   |  -3  | do int_modulo | -2     | |
      | -8   |   3  | do int_modulo |  1     | |
      |  3   |   7  | do int_modulo |  3     | |
      |  3   |  -7  | do int_modulo | -4     | |
      | -3   |  -7  | do int_modulo | -3     | |
      | -3   |   7  | do int_modulo |  4     | |
      |  3   |   0  | do int_modulo |        | "int_modulo attempted modulo 0" |
      |  0   |   0  | do int_modulo |        | "int_modulo attempted modulo 0" |
      |  0   |  -0  | do int_modulo |        | "int_modulo attempted modulo 0" |
      
      
    Examples: int_multiply
      | arg1 | arg2 | instruction       | result | error_msg |
      |  3   |  4   | do int_multiply   |  12    | |
      |  0   |  3   | do int_multiply   |   0    | |
      | -2   | 16   | do int_multiply   | -32    | |
      | -2   | -4   | do int_multiply   |   8    | |
      |  1   | -4   | do int_multiply   |  -4    | |
      
      
    Examples: int_power
      | arg1  | arg2     | instruction  | result | error_msg |
      |   3   |   3      | do int_power |   27   | |
      |   3   |   1      | do int_power |    3   | |
      |   3   |   0      | do int_power |    1   | |
      |   3   |  -3      | do int_power |    0   | |
      |  -4   |   7      | do int_power | -16384 | |
      |  -4   |  -2      | do int_power |    0   | |
      |  -4   |  -2      | do int_power |    0   | |
      | 77777 | 9999999  | do int_power |        | "int_power did not return a finite integer" |
      
      
    Examples: int_subtract
      | arg1 | arg2 | instruction     | result | error_msg |
      |  3   |  4   | do int_subtract |  -1    | |
      |  5   |  3   | do int_subtract |   2    | |
      | -2   | -3   | do int_subtract |   1    | |
      | -3   | -2   | do int_subtract |  -1    | |
      | -3   |  0   | do int_subtract |  -3    | |
      
      