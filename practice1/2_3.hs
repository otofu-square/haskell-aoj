type X = Int
type Y = Int
type Z = Int
type W = Int
type H = Int
type D = Int

data Point = Point X Y | Point3D X Y Z

data Rect = Rect X Y W H | Rect3D X Y Z W H D

main :: IO ()
main = do
    print $ contains (Rect 2 2 3 3) (Point 1 1)
    print $ contains (Rect 2 2 3 3) (Point 2 2)
    print $ contains (Rect 2 2 3 3) (Point 3 3)
    print $ contains (Rect 2 2 3 3) (Point 4 4)
    print $ contains (Rect 2 2 3 3) (Point 5 5)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 1 1 1)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 2 2 2)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 3 3 3)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 4 4 4)
    print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 5 5 5)

contains :: Rect -> Point -> Bool
contains (Rect x1 y1 w h) (Point x2 y2) = (x1 <= x2) && (x1 + w >= x2) && (y1 <= y2) && (y1 + h >= y2)
contains (Rect3D x1 y1 z1 w h d) (Point3D x2 y2 z2) = (x1 <= x2) && (x1 + w >= x2) && (y1 <= y2) && (y1 + h >= y2) && (z1 <= z2) && (z1 + d >= z2)
contains _ _ = False
