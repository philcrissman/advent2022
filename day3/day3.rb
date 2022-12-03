#!/usr/bin/env ruby

input = File.read("./input.txt")
letters = [nil]
letters << ("a".."z").to_a
letters << ("A".."Z").to_a
letters.flatten!

def halves(arr)
  [arr[0..arr.size/2-1],arr[arr.size/2..-1]]
end

sacks = input.split("\n").map do |el|
  s = el.split('')
end

data = sacks.map do |s|
  j,k = halves(s)
  j & k
end.flatten

data2 = sacks.each_slice(3).map{|group| group[0] & group[1] & group[2]}.flatten.map{|el| letters.index(el)}.sum
  
data = data.map{|el| letters.index(el)}

puts data.sum

puts data2
