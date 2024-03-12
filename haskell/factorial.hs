factorial :: Int -> Int
factorial x =
  if x > 0
  then x * factorial (x - 1)
  else 1

fullFactorial :: Integer -> Integer
fullFactorial n =
  if n > 0
  then n * fullFactorial (n - 1)
  else 1
       
main = do
  print (factorial 21)
  print (fullFactorial 21)


