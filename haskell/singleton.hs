-- Verify pattern matching for list

data List = Cons Int List | Empty

singleton :: List -> Bool
singleton (Cons _ Empty) = True
singleton _ = False

main = do
   print $ singleton Empty -- False 
   print $ singleton $ Cons 2 Empty -- True 
   print $ singleton $ Cons 3 $ Cons 4 Empty -- False


-- singleton (Cons _ (Cons _ Empty)) = True

-- main = do
--    print $ singleton Empty -- False 
--    print $ singleton $ Cons 2 Empty -- False
--    print $ singleton $ Cons 3 $ Cons 4 Empty -- True

