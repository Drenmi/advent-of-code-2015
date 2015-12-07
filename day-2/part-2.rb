require_relative("present")

input = File.read("input.txt")

dimensions = input.split("\n").map { |i| i.split("x").map(&:to_i) }

puts dimensions.reduce(0) { |sum, d| sum + Present.new(*d).ribbon_required }
