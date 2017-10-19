import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = do
  x : _ <- (map read . words) <$> getLine
  print $ cube x

cube :: Int -> Int
cube x = x * x * x
