import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = do
  a:b:_ <- (map read . words) <$> getLine
  putStrLn $ compareTwoInt a b

compareTwoInt :: Int -> Int -> String
compareTwoInt a b
  | a > b = "a > b"
  | a < b = "a < b"
  | otherwise = "a == b"
