data Token = TokOp Operator
           |TokIdent String
           | TokEnum Int
  deriving(Show, Eq)

showContent :: Token -> String
showContent (TokOp op) = opToStr op
showContent (TokIdent str) = str
showContent (TokEnum i) = show i

token :: Token
token = TokIdent "*"

main = do
  print $ showContent token
  print token

data Operator = Plus | Minos | Times | Div
  deriving(Show, Eq)

opToStr :: Operator -> String
opToStr Plus = "+"
opToStr Minos = "-"
opToStr Times = "*"
opToStr Div = "/"
