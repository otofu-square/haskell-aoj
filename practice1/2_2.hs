type X = Int
type Y = Int
type W = Int
type H = Int

data Point = Point X Y

data Rect = Rect X Y W H

main :: IO ()
main = do
    print $ contains (Rect 2 2 3 3) (Point 1 1)
    print $ contains (Rect 2 2 3 3) (Point 2 2)
    print $ contains (Rect 2 2 3 3) (Point 3 3)
    print $ contains (Rect 2 2 3 3) (Point 4 4)
    print $ contains (Rect 2 2 3 3) (Point 5 5)

contains :: Rect -> Point -> Bool
contains (Rect x1 y1 w h) (Point x2 y2) = (x1 <= x2) && (x1 + w >= x2) && (y1 <= y2) && (y1 + h >= y2)
