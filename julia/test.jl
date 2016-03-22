#rand(1:6, 3, 3) #cant use - arrays are variable length
#x = Array{Int, 1}[[3, 6, 7], [60, 70, 80, 90], [1, 2, 3, 4], [20, 23, 80]]
x = Array{Array{Int, 1},1}()
for j in 1:1000
  push!(x,  sort!(rand(1:1000, rand(1:1000))))
end
outfile = open("test.txt", "w")
write(outfile,JSON.json(x))
@inbounds function find_range(x::Array{Array{Int, 1},1})
  y = [i[1] for i in x] # sort!(x,by=x->x[1])
  small = indmin(y) #extrema(y)
  big = maximum(y)
  next = minimum(deleteat!(y,small))
  (findlast(x->x<=next,x[small]), big)
end
@time for m in 1:100000 find_range(x) end
