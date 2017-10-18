data Color = Red | Blue | Green | Cyan | Yellow | Magenta | White deriving (Show, Eq)

mix :: Color -> Color -> Color
mix Red Blue = Magenta
mix Red Green = Yellow
mix Blue Green = Cyan
mix c1 c2
    | c1 == c2 = c1
    | otherwise = White

main :: IO ()
main = do
    print (mix Red Blue)
    print (mix Red Green)
    print (mix Blue Green)
    print (mix Blue Blue)
    print (mix Green Green)
    print (mix Red Red)
    print (mix Yellow Red)
    print (mix Cyan Blue)
    print (mix Magenta Green)
