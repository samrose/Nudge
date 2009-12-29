require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "nudge"
    gemspec.summary = "Genetic Programming in the Nudge language"
    gemspec.description = "The nudge gem will (but does not yet) provide a simple framework for building, running and managing genetic programming experiments which automatically discover algorithms and equations to solve well-defined target problems. It depends on CouchDB and Ruby 1.9+"
    gemspec.email = "bill@vagueinnovation.com"
    gemspec.homepage = "http://github.com/Vaguery/PragGP"
    gemspec.authors = ["Bill Tozier", "Trek Glowacki"]
    
    gemspec.required_ruby_version = '>= 1.9.1'
    
    gemspec.add_dependency('couchrest', '>= 0.33')
    gemspec.add_dependency('sinatra', '>= 0.9.4')
    gemspec.add_dependency('treetop', '>= 1.4.3')
    gemspec.add_dependency('polyglot', '>= 0.2.9')
    gemspec.add_dependency('activesupport', '>= 2.3.5')
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end