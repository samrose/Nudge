#encoding: utf-8
program = <<-ENDME

block {
  value «1,string»
  value «2,int»
  value «3,image»
}

«1,string» hi there \n we have some lines 
       with extra space
\t here!
«2,int» 88
«3,image» http://mypath.com/somefile.jpg
«4,string» some extra one with a «3,hi» in it (and some ' and "' " quotes)
«5,blob» also works with ǝpoɔıun

ENDME

listing, spacer, fn = program.partition( /^(?=«[\d],)/ )

eachfn = fn.split( /^(?=«[\d],)/ )

breaker = /^«([\d]),([a-zA-Z][a-zA-Z0-9]*)»(.*)/m

pieces = eachfn.collect {|fn| fn.match(breaker)[1..3]}

puts  listing 
puts "\nchunks:\n" + eachfn.inspect
puts "\nsliced chunks:\n"
pieces.each do |fn|
  puts "footnote number: #{fn[0]}\n"
  puts "           type: #{fn[1]}\n"
  puts "          value:#{fn[2].inspect}\n\n"
end