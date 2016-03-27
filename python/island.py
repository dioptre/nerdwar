import multiprocessing
import numpy as np
import time

N = 1000000

def Compute(_):
    for i in range(25):
        max_left = np.maximum.accumulate(heights)
        max_right = np.maximum.accumulate(heights[::-1])[::-1]
        np.sum(np.maximum(0, np.minimum(max_left, max_right) - heights))

heights = np.random.randint(100, size=N)

start_time = time.time()

pool = multiprocessing.Pool(4)
pool.map(Compute, range(4))

end_time = time.time()

print end_time - start_time
