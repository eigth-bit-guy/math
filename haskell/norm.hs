-- norm 

norm :: [Double] -> Double
norm lst = sqrt(squares lst)

squares :: [Double] -> Double
squares [] = 0.0
squares (x : xs) = x * x + squares xs

main = print (norm [1.1, 2.2, 3.3])
  
