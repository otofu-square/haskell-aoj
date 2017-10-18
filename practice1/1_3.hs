fib :: Int -> Int
fib n = case n of
    0 -> 1
    1 -> 1
    _ | n > 0 -> fib (n-1) + fib (n-2)

main :: IO ()
main = print (map fib [1..10])
