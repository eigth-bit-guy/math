import Data.Char

data Operator = Plus 
              | Minus
              | Times 
              | Div 
  deriving(Show, Eq)

data Token = TokOp Operator
           |TokIdent String
           | TokNum Int
  deriving(Show, Eq)

operator :: Char -> Operator
operator x
  | x == '+' = Plus
  | x == '-' = Minus
  | x == '*' = Times
  | x == '/' = Div


tokenize :: String -> [Token]
tokenize [] = []
tokenize (x : xs) 
  | elem x "+-*/" = TokOp (operator x) : tokenize xs
  | isDigit x = TokNum (digitToInt x) : tokenize xs
  | isAlpha x = TokIdent [x] : tokenize xs
  | isSpace x = tokenize xs
  | otherwise = error $ "Cannot tokenize: " ++ [x]

main = print $ tokenize "Test 1 + 3 / 5"
