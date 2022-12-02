#!/usr/bin/env ruby

@input = File.read("./input.txt")

@elves = @input.split("\n\n").map{|elf| elf.split("\n").map(&:to_i) }.map{|elf| elf.sum}.sort

puts "first answer: #{@elves.last}"
puts "second answer: #{@elves[-3..-1].sum}"
