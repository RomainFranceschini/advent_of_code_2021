depth = 0
position = 0
aim = 0

File
  .read_lines("#{__DIR__}/../input/day02.txt")
  .each do |line|
    command, value = line.split
    amount = value.to_i

    case command
    when "forward"
      position += amount
      depth += aim * amount
    when "down" then aim += amount
    when "up"   then aim -= amount
    end
  end

puts position * depth
