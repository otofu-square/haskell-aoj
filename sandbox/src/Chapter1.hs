doubleMe x = x + x
doubleMe 2 -- 4

doubleUs x y = doubleMe x + doubleMe y
doubleMe 2 3 -- 10

doubleSmallNumber x = if x > 100 then x else x * 2
doubleSmallNumber 99  -- 198
doubleSmallNumber 100 -- 200
doubleSmallNumber 101 -- 101

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
doubleSmallNumber' 99  -- 199
doubleSmallNumber' 100 -- 201
doubleSmallNumber' 101 -- 102

lostNumbers = [4, 8, 15, 16, 23, 42]
[1, 2, 3, 4] ++ [5, 6, 7, 8]
"hello" ++ " " ++ "world"
['w', 'o'] ++ ['o', 't']
'A':" Small Cat"
5:[1, 2, 3, 4, 5]
"ABCDEFG" !! 0
"ABCDEFG" !! 1
"ABCDEFG" !! 2
"ABCDEFG" !! 3
"ABCDEFG" !! 4
