#!/usr/bin/env ruby
require_relative 'numeric.rb'
require_relative 'math.rb'

@fairs = [] 
Math.sqrt_range((1..10**14)).each do |sqrt|
  if sqrt.to_i.palindrome? and (sqrt * sqrt).to_i.palindrome?
    num =  (sqrt * sqrt).to_i
    @fairs << num
  end
end

def count_fair_and_square(a,b)
  count = 0
  @fairs.each do | x|
    if a <= x and x <= b
      count = count + 1
    end
  end
  count
end

File.open(ARGV[0]) do |f|
  f.each_line.with_index do |line, index|
    if index > 0
      a = line.split(" ")[0].to_i
      b = line.split(" ")[1].to_i
      STDOUT << "Case ##{index}: #{count_fair_and_square(a,b)}\n"
    end
  end
end


