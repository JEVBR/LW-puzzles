file = File.open('input.txt')
read_results = file.read

results = read_results.split(/\n/)

depth = 0
position = 0

results.each do |route|
  step = route.split
  depth += step[1].to_i if step[0] == 'down'
  depth -= step[1].to_i if step[0] == 'up'
  position += step[1].to_i if step[0] == 'forward'
end

p "depth = #{depth} pos = #{position} | Puzzle = #{depth * position}"