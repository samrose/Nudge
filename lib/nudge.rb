$: << File.join(File.dirname(__FILE__), "/../lib") 

require 'rubygems'
require 'treetop'
require 'polyglot'
require 'active_support'

require 'interpreter/grammars/nudge_common'

require 'interpreter/grammars/nudge_value_helpers'
require 'interpreter/grammars/nudge_reference_helpers'
require 'interpreter/grammars/nudge_instruction_helpers'
require 'interpreter/grammars/nudge_codeblock_helpers'

require 'interpreter/grammars/nudge_reference'
require 'interpreter/grammars/nudge_instruction'
require 'interpreter/grammars/nudge_value'
require 'interpreter/grammars/nudge_codeblock'

require 'interpreter/nudge_program'

require 'interpreter/interpreter'
require 'interpreter/types/pushTypes'
require 'interpreter/types/codeType'
require 'interpreter/stack'
require 'interpreter/programPoints'

require 'instructions/infrastructure'

require 'instructions/stack_manipulation'
require 'instructions/int_arithmetic'
require 'instructions/float_arithmetic'
require 'instructions/float_transcendental'
require 'instructions/comparisons'
require 'instructions/conditionals'
require 'instructions/conversions'
require 'instructions/random_value'
require 'instructions/exec'
require 'instructions/name_bindings'
require 'instructions/name_basics'
require 'instructions/code_basics'

# Dir.glob('instructions/bool/*.rb').each do |specfile|
#   require specfile
#   puts specfile
# end

require 'instructions/bool/bool_and'
require 'instructions/bool/bool_equal_q'
require 'instructions/bool/bool_not'
require 'instructions/bool/bool_or'
require 'instructions/bool/bool_xor'

include NudgeType