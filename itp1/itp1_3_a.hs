import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = putStrLn $ concatWithNewLine $ map (const "Hello World") [1..1000]

concatWithNewLine :: [String] -> String
concatWithNewLine = foldl1 (\x y -> x ++ "\n" ++ y)
