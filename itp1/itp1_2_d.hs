import           Control.Applicative
import           Control.Monad
import           Data.List

type Width = Int
type Height = Int
type X = Int
type Y = Int
type R = Int

main :: IO ()
main = do
  w:h:x:y:r:_ <- (map read . words) <$> getLine
  putStrLn $ if isWithinArea w h x y r then "Yes" else "No"

isWithinArea :: Width -> Height -> X -> Y -> R -> Bool
isWithinArea w h x y r = isValidX w r x && isValidY h r y

isValidX :: Width -> R -> X -> Bool
isValidX w r x = x <= w - r && x >= r

isValidY :: Height -> R -> Y -> Bool
isValidY h r y = y <= h - r && y >= r
