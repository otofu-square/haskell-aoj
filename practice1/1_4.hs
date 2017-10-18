sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = sum' xs + x

product' :: [Int] -> Int
product' [] = 0
product' (x:xs) = sum' xs * x

take' :: Int -> [Int] -> [Int]
take' _ [] = []
take' n _ | n < 1 = []
take' n (x:xs) = x : take' (n-1) xs

drop' :: Int -> [Int] -> [Int]
drop' _ [] = []
drop' n xs | n < 1 = xs
drop' n (_:xs) = drop' (n-1) xs

reverse' :: [Int] -> [Int]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


main :: IO ()
main = do
    print $ sum' [1..5]
    print $ product' [1..5]
    print $ take' 2 [1, 2, 3]
    print $ drop' 2 [1, 2, 3]
    print $ reverse' [1..5]
