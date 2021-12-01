file = File.open('input.txt')
read_results = file.read

results = read_results.split

def count_increments(values)
  inc = 0
  (0..values.count-2).each do |index|
    inc += 1 if values[index] < values[index + 1]
  end
  inc
end

def slide (values, qty)
  res = []
  (0..values.count - qty).each do |index|
    res[index] = 0
    (0..qty - 1).each do |count|
      res[index] += values[index + count].to_i
    end
  end
  res
end

p " total increments in input values : #{count_increments(slide(results, 3))}"
