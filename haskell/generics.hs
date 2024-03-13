data List a = Cons a (List a) | Empty

pList :: List a -> a
pList (Cons _ Empty) = pList Empty
pList _ = 0

main = print (pList Cons "Hello" (Cons Empty))
