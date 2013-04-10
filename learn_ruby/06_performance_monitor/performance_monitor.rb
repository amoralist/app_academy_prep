def measure(n = 1)
  i = n
  total_time = 0
  while i > 0
    start = Time.now
    yield
    stop = Time.now
    elapsed = stop - start
    total_time += elapsed
    i -= 1  
  end
  total_time / n
end