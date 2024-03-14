-- What is the main idea :
-- The main idea is make a simple list of tasks and print this in screen

module Todo where
import Data.Char

type Todo = [Char]

--  (n, td)
--   ^ index of list
get_todo :: (Int, Todo) -> IO ()
get_todo n td = do
  putStr ("Add to list: \n")
  print (n)
  putStr ("" ++ td)


