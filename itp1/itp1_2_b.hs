import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = do
  a:b:c:_ <- (map read . words) <$> getLine
  putStrLn $ compareThreeNumbers a b c

compareThreeNumbers :: Int -> Int -> Int -> String
compareThreeNumbers x y z =
  if x < y && y < z
    then "Yes"
    else "No"
