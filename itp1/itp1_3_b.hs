import           Control.Applicative
import           Control.Monad
import           Data.List

main :: IO ()
main = do
    arg <- loop 1
    putStrLn arg

loop :: Int -> IO (String)
loop n = do
    arg <- getLine
    return $ "Case " ++ (show n) ++ ": " ++ arg
