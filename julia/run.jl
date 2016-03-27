global x = SharedArray(Int64,1, init = S->arr = S)
x.s = rand(1:100,1000000)
@time @sync @inbounds for i in procs()
       	for j in 1:25
       		@async remotecall_wait(i,test,x.s)
	end
end

