#!/usr/bin/env ruby

@strategy = File.read("./input.txt").split("\n").map{|round| round.split(" ").join('') }

@scores = {
  "AX" => 4,
  "AY" => 8,
  "AZ" => 3,
  "BX" => 1,
  "BY" => 5,
  "BZ" => 9,
  "CX" => 7,
  "CY" => 2,
  "CZ" => 6
}

@scores2 = {
  "AX" => 3,
  "AY" => 4,
  "AZ" => 8,
  "BX" => 1,
  "BY" => 5,
  "BZ" => 9,
  "CX" => 2,
  "CY" => 6,
  "CZ" => 7
}

puts "first answer #{@strategy.map{|round| @scores[round]}.sum}"
puts "second answer #{@strategy.map{|round| @scores2[round]}.sum}"
