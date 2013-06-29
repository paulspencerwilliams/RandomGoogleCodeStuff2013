#!/usr/bin/env ruby
  
def nvalue(name, n)
  nval = 0
  words = (0..name.length).inject([]){|word,i|
    (1..name.length - i).inject(word){|word,j|
      word << name[i,j]
    }
  }.each do | s |
    if s =~ /([bcdfghjklmnpqrstvwxyz]{#{n}})/i
      nval = nval + 1
    end
  end
  nval
end

File.open(ARGV[0]) do |f|
  f.each_line.with_index do |line, index|
    if index > 0
      parts = line.split(' ')
      name = parts[0]
      n = parts[1].to_i
      STDOUT << "Case ##{index}: #{nvalue(name, n)}\n"
    end
  end
end

