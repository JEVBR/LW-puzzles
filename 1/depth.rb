file = File.open("input.txt")
read_results = file.read

results = read_results.split

inc = 0
dec = 0

(0..results.count).each do |index|
  inc +=1 if results[index].to_i < results[index+1].to_i
  dec +=1 if results[index].to_i > results[index+1].to_i
end

p inc
p dec
