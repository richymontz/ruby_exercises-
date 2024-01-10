def fibonacci(range)
  return nil if range <= 0
  tmp, fib = 1, 0

  (1..range).each do
    puts fib
    tmp = tmp + fib
    fib = tmp - fib
  end
  
end

fibonacci(10)