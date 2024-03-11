putQStrLn a = do
  putChar '"'
  putStr a
  putChar '"'

main = do
  putStr "Enter the text: \n"
  str <- getLine
  putQStrLn str
