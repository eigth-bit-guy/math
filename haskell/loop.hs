-- print squares of numbers from 1 to 10  

loop :: Int -> IO ()
loop n = do
  if n <= 10
    then do
    let s = n * n
    putStrLn (show s)
    loop (n + 1)
    else
    return ()
main :: IO ()
main = loop 0
    
