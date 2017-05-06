-- Pattern Match
fact 0 = 1
fact n = n * fact(n-1)

-- Guard
fact n
     | n == 0    = 1
     | otherwise = n * fact(n-1)
