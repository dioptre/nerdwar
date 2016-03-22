require 'json'

input = JSON.parse(ARGF.read)

start = Time.now

1.times.each do |e|
  min_column = input.map {|a| a.first}
  max = min_column.max
  second_smallest = min_column.sort[1]
  min_index = min_column.index(min_column.min)
  min = input[min_index].max_by { |x| x > second_smallest ? -1 : x }
end

puts (Time.now - start).to_f
