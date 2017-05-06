-- Pattern Match
fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo n = fibo (n-1) + fibo(n-2)

-- Guard
fibo :: Int -> Int
fibo n
     | n == 0    = 0
     | n == 1    = 1
     | otherwise = fibo(n-1) + fibo(n-2)

-- Case of
fibo :: Int -> Int
fibo n = case n of
     0 -> 0
     1 -> 1
     _ -> fibo(n-1) + fibo(n-2)

-- Call
fibo 1
fibo 2
fibo 3
fibo 4
fibo 5
fibo 6
fibo 7
fibo 8
fibo 9
fibo 10
