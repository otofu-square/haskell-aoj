fact :: Int -> Int
fact 0 = 1
fact x = product [1..x]

main :: IO ()
main = do
    print $ fact 0
    print $ fact 1
    print $ fact 2
    print $ fact 3
    print $ fact 4
    print $ fact 5
