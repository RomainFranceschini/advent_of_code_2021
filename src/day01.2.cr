puts File
  .read_lines("#{__DIR__}/../input/day01.txt")
  .each
  .map(&.to_i)
  .cons(3)
  .map(&.sum)
  .cons_pair
  .sum { |pair|
    pair.last > pair.first ? 1 : 0
  }
