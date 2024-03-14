-- NOTE: Todo app in haskell

putTd :: [Char] -> IO ()
putTd todo = todoList todo 

todoList :: [String] -> IO ()
todoList todo = 

main = putTd "Fazer café"
