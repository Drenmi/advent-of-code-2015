input = File.read("input.txt")

floor = 0
basement = -1

input.split("").each_with_index do |c, i|
  floor += c == "(" ? 1 : -1

  if floor == basement
    puts i + 1
    break
  end
end
