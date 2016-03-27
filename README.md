#Summary
Results still out!

#Challenge
Measure the water on an island using hills measured in height in an array.
Ie.
```
      _
  _  | |
_| |_| |_
```
* = [0,1,0,2,0] where array in this 5 length array example the water level = 1

Extrapolate the length of the array to 10^6 long (random values between 1:100), and then repeat 100 times!

#Results

* Julia
```
julia> include("run.jl")
  1.537396 seconds (17.21 k allocations: 955.118 MB, 1.59% gc time)
```

* Python
```
a@andyg:~/Downloads/nerdwar/python$ python island.py 
0.950380086899
```
