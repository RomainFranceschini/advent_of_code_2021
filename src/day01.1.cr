puts File
  .read_lines("#{__DIR__}/../input/day01.txt")
  .each
  .map(&.to_i)
  .cons_pair
  .sum(0) { |pair|
    pair.last > pair.first ? 1 : 0
  }
