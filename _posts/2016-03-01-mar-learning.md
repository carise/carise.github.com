---
layout: post
title: "What I Learned in March"
---

# {{ page.title }}

### 2016 March 17

In the middle of learning how to use gdal and friends. Today, I learned sort of how to use multiprocessing with functional partials. e.g.:

```
  from multiprocessing import Pool

  def func(some_iter_val, arg1, arg2):
    pass

  partial_func = partial(func, arg1='default', arg2='other')

  pool = Pool()
  pool.map(partial_func, iters)
  pool.close()
  pool.join()
```

I'm trying to learn how to do large-scale operations with gdal (like processing very large rasters and then polygonizing). I hear it can be done with MapReduce/HDF (took a look at the Monsanto preso), but I haven't worked up the energy to attempt it yet.
