#Challenge
Select the smallest range of numbers that span all arrays. So in the example it's between 3 and 60.

![The Challenge](/images/challenge.jpg)

#Results
* Ruby (seconds): 
```
a@andyg:~/Downloads/nerdwar$ cat data.json | ruby awesome.rb 
29.136018552
```
* Julia (seconds):
```
julia> include("test.jl")
  3.364968 seconds (34.90 M allocations: 1.276 GB, 22.12% gc time)
  4.437507 seconds (37.51 M allocations: 1.475 GB, 23.04% gc time)
  0.602514 seconds (131.32 k allocations: 43.007 MB, 7.77% gc time)
```
* Interestingly after include:
```
  julia> @time @parallel for m in 1:100000  find_range(x) end
  0.039944 seconds (44.44 k allocations: 14.371 MB)
```

