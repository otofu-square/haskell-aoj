import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = do
  a:b:_ <- (map read . words) <$> getLine
  putStrLn $ show (area a b) ++ " " ++ show (perimeter a b)

area :: Int -> Int -> Int
area a b = a * b

perimeter :: Int -> Int -> Int
perimeter a b = 2 * a + 2 * b
