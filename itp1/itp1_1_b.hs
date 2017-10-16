import           System.Environment

main :: IO ()
main = do
  args <- getArgs
  print $ head args
