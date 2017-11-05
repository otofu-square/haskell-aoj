import           Control.Applicative
import qualified Control.Monad       as Monad
import           Data.List

main :: IO ()
main = loop 1

loop :: Int -> IO ()
loop n = do
    arg <- getLine
    Monad.when (arg /= "0") $ do
        putStrLn $ "Case " ++ show n ++ ": " ++ arg
        loop $ n + 1
