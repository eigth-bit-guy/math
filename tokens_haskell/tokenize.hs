data Token
data Expresion

tokenize :: String -> [Token]
tokenize = undefined

parser :: [Token] -> Expresion
parser = undefined

main :: IO()
main = do
  line <- getLine
  putStr "Token: "
  putStr line
  putChar '\n'
  print(if read line >= 1 then 1 else 0)
  main
