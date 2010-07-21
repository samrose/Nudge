require File.expand_path('nudge_point', File.dirname(__FILE__))
require File.expand_path('points/block_point', File.dirname(__FILE__))
require File.expand_path('points/do_point', File.dirname(__FILE__))
require File.expand_path('points/nil_point', File.dirname(__FILE__))
require File.expand_path('points/ref_point', File.dirname(__FILE__))
require File.expand_path('points/nil_point', File.dirname(__FILE__))
require File.expand_path('points/value_point', File.dirname(__FILE__))
require File.expand_path('nudge_error', File.dirname(__FILE__))
require File.expand_path('nudge_instruction', File.dirname(__FILE__))
require File.expand_path('nudge_parser', File.dirname(__FILE__))
require File.expand_path('nudge_value', File.dirname(__FILE__))
require File.expand_path('nudge_writer', File.dirname(__FILE__))
require File.expand_path('execution/settings', File.dirname(__FILE__))
require File.expand_path('execution/outcome', File.dirname(__FILE__))
require File.expand_path('execution/executable', File.dirname(__FILE__))

Dir.glob(File.expand_path("instructions/*/*.rb", File.dirname(__FILE__))) {|file| require file }
