#!/usr/bin/env ruby
comp = ARGV[0]

puts comp.scan(/^\d{10}$/).join
