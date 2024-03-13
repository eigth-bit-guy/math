import Data.Char

data Token = Digit Int
           | Alpha String
   deriving(Show, Eq)

tokenize :: String -> [Token]
tokenize (x : rest) =
  if isDigit x
  then
    Digit : tokenize rest
  else
    Alpha : tokenize rest
tokenize [] = []

main = print $ tokenize "teste1234"



