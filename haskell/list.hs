-- Lists and Cons

data List = Cons Int List | Empty
lst0, lst1, lst2 :: List
lst0 = Empty        
lst1 = Cons 1 lst0
lst2 = Cons 2 lst1

singleton :: List -> Bool
singleton (Cons _ Empty) = True
singleton _ = False

sumLst :: [Int] -> Int
sumLst (i : rest) = i + sumLst rest
sumLst [] = 0

lst = [2, 4, 6]

main = do
  print (sumLst lst)
  print (sumLst [])

