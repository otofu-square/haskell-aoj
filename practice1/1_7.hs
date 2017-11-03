import           Data.Char

rot13 :: Char -> Char
rot13 x | ord x >= 78 = chr (ord x - 13)
rot13 x | ord x < 78 = chr (ord x + 13)
rot13 _ = ' '

main :: IO ()
main =
    print $ map rot13 "URYYB"
