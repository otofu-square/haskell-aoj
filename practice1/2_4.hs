data Point = Point { x :: Int, y :: Int }

data Rect = Rect { origin :: Point, w :: Int, h :: Int }

main :: IO ()
main = do
    print $ contains (Rect (Point 2 2) 3 3) (Point 1 1)
    print $ contains (Rect (Point 2 2) 3 3) (Point 2 2)
    print $ contains (Rect (Point 2 2) 3 3) (Point 3 3)
    print $ contains (Rect (Point 2 2) 3 3) (Point 4 4)
    print $ contains (Rect (Point 2 2) 3 3) (Point 5 5)

contains :: Rect -> Point -> Bool
contains Rect {origin = Point {x = x1, y = y1}, w = weight, h = height} Point {x = x2, y = y2}
    = (x1 <= x2) && (x1 + weight >= x2) && (y1 <= y2) && (y1 + height >= y2)
