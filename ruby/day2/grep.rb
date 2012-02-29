#!/usr/bin/env ruby
if (ARGV.size != 2) then
  puts "Usage: grep.rb <expr> <file>"
  exit(1) 
end

expr = Regexp.new(ARGV[0], "g")
in_file = ARGV[1]

File.open(in_file, "r") { |f|
  f.each { |line| puts line if line.match(expr) }
}
