zipList :: ([a], [b]) -> [(a, b)]
zipList ((x : xs), (y : ys)) = (x, y) : zipList (xs, ys)
zipList (_, _) = []

main = print (zipList ([1, 2], [3, 4]))

