import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = do
  time:_ <- (map read . words) <$> getLine
  putStrLn $ show (hour time) ++ ":" ++ show (minute time) ++ ":" ++ show (second time)

hour :: Int -> Int
hour time = div time 3600

minute :: Int -> Int
minute time = mod (div time 60) 60

second :: Int -> Int
second time = mod time 60
