require 'json'

input = JSON.parse(ARGF.read)

start = Time.now

10000.times.each do |e|
	min_column = input.map{|a| a[0]}
	max = min_column.max
	second_smallest = min_column.sort[1]
	min = input[min_column.index(min_column.min)].max_by do |x|
		if x > second_smallest
			x = -1
		end
		x
	end
end


puts (Time.now - start).to_f
