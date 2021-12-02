depth = 0
position = 0

File
  .read_lines("#{__DIR__}/../input/day02.txt")
  .each do |line|
    command, value = line.split
    amount = value.to_i

    case command
    when "forward" then position += amount
    when "down"    then depth += amount
    when "up"      then depth -= amount
    end
  end

puts position * depth
