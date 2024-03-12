-- recursion
-- fib(x - 1) + fib (x - 2)

fib :: Int -> Int
fib n =
  if n > 2
  then fib (n - 1) + fib (n - 2)
  else 1

main = print (fib 6)
