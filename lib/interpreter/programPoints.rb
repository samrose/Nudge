module Nudge
  
  class ProgramPoint
    def points
      1
    end
  end
  
  
  class CodeBlock < ProgramPoint
    @@parser = NudgeLanguageParser.new
    
    def initialize(code = "block {}")
      @listing = code
    end
    
    def listing=(rawCode)
      @listing = rawCode
    end
    
    def listing
      @listing ||= "block {}"
    end
    
    def contents=(newArray)
      @contents = newArray
    end
    
    def contents
      @contents ||= self.reparse
    end
    
    def reparse
      clone = @@parser.parse(@listing).to_points
      @listing = clone.listing
      return clone.contents
    end
    
    def points
      if @contents
        @listing.split(/\n/).length
      else
        self.reparse
        @listing.split(/\n/).length
      end
    end
    
    def go(context)
      @contents.reverse.each {|item| context.stacks[:exec].push(item)} 
    end
    
    def tidy(level=1)
      tt = "block {"
      indent = level*2
      @contents.each {|item| tt += ("\n" + (" "*indent) + item.tidy(level+1))}
      tt += "}"
      return tt
    end
  end
  
  
  class LiteralPoint < ProgramPoint
    attr_accessor :type, :value
    
    def initialize(type,value)
      @type = type.to_sym
      @value = value
    end
    
    def go(context)
      context.stacks[self.type].push(self)
    end
    
    def tidy(level=1)
      "literal " + @type.to_s + " (" + @value.to_s + ")"
    end
    
    def randomize
      all = NudgeType.active_types
      newType = all[rand(all.length)]
      @type = newType.to_s.slice(0..-5).downcase
      @value = newType.any_value
    end
    
    def self.any
      tmp = LiteralPoint.new("int", 1)
      tmp.randomize
      return tmp
    end
    
    def listing
      self.tidy
    end
  end
  
  
  class Erc < ProgramPoint
    attr_accessor :type, :value
    def initialize(type, value)
      @type = type.to_sym
      @value = value
    end
    
    def to_literal()
      LiteralPoint.new(@type,@value)
    end
    
    def go(context)
      self.to_literal.go(context)
    end
    
    def tidy(level=1)
      "sample " + @type.to_s + " (" + @value.to_s + ")"
    end
    
    def randomize
      all = NudgeType.active_types
      newType = all[rand(all.length)]
      @type = newType.to_s.slice(0..-5).downcase
      @value = newType.any_value
    end
    
    def resample
      @value = "#{@type.to_s.capitalize}Type".constantize.any_value
    end
    
    def self.any
      tmp = Erc.new(NudgeType.all_types[0].to_s.slice(0..-5).downcase,0)
      tmp.randomize
      return tmp
    end
    
    def listing
      self.tidy
    end
  end
  
  
  class ChannelPoint < ProgramPoint
    
    def self.any(context)
      tmp = ChannelPoint.new("e")
      tmp.randomize(context)
      return tmp
    end
    
    attr_accessor :name
    
    def initialize(var_name)
      @name = var_name
    end
    
    def go(context)
      lookedUp = context.lookup(@name) # returns literal
      if lookedUp
        context.stacks[:exec].push(lookedUp)
      else
        context.stacks[:name].push(self) #FIXME
      end
    end
    
    def tidy(level=1)
      "ref " + @name
    end
    
    def randomize(context)
      which = context.references.sample
      @name = which
    end
    
    def listing
      self.tidy
    end
  end
  
  
  class InstructionPoint < ProgramPoint
    attr_accessor :name, :requirements, :effects
    def initialize(name)
      @name = name
    end
    
    def className
      "#{@name.camelize}Instruction"
    end
    
    def classLookup
      self.className.constantize
    rescue NameError
      raise InstructionNotFoundError, "#{self.className} not found"
    end
    
    def tidy(level=1)
      "do " + @name
    end
    
    class InstructionNotFoundError < NameError
    end
    
    def go(context)
      className = self.classLookup
      context.instructions[className].go
    rescue InstructionNotFoundError
      return
    end
    
    def randomize
      all = Instruction.active_instructions
      className = all[rand(all.length)].to_s
      @name = className.slice(0..-12).underscore
    end
    
    def self.any
      tmp = InstructionPoint.new("int_add")
      tmp.randomize
      return tmp
    end
    
    def listing
      self.tidy
    end
  end
  
end