import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = do
  a:b:c:_ <- (map read . words) <$> getLine
  putStrLn $ convertIntList $ sortThreeNumbers a b c

sortThreeNumbers :: Int -> Int -> Int -> [Int]
sortThreeNumbers x y z = sort [x, y, z]

convertIntList :: [Int] -> String
convertIntList list = foldl1 concatWithBrank $ map show list

concatWithBrank :: String -> String -> String
concatWithBrank a b = a ++ " " ++ b
