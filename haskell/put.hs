putQStrLn a = do
  putChar '"'
  putStr a
  putChar '"'

main = putQStrLn "Hello"
