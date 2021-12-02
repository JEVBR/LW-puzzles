file = File.open('input.txt')
read_results = file.read

results = read_results.split(/\n/)

depth = 0
position = 0
aim = 0

results.each do |route|
  step = route.split
  value = step[1].to_i
  action = step[0]
  aim += value if action == 'down'
  aim -= value if action == 'up' 
  # depth += value if action == 'down'
  # depth -= value if action == 'up'
  position += value if action == 'forward'
  depth += aim * value if action == 'forward'

end

p "depth = #{depth} pos = #{position} | aim = #{aim} res = #{depth * position}"
