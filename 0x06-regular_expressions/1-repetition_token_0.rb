#!/usr/bin/env ruby
comp = ARGV[0]

puts comp.scan(/hbt{2,5}n/).join
