function test(a) 
	b = cummax(a)
	c = reverse!(cummax(reverse!(a)))
	sum(max(0, min(b,c) -a))
end
