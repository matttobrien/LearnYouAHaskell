-- say me x must be at the bottom so it checks each case
sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5"

-- basic recursion using matching
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- pattern matching with tuples
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- pattern matching list comp
xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
matchComp = [ a + b | (a, b) <- xs ]

-- @ pattern --> allows breaking up but keeps a reference to the orginal item
firstLetter :: String -> String
firstLetter "" = "Empty string, whoops!"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- gurads
max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b =b 
  | otherwise = a

-- where is varibles/functions scoped to the function
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2

-- let is similar to where, however it doesn't span over guards
calcBmis' :: [(Double, Double)] -> [Double]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

-- case expression
describeList :: [a] -> String
describeList ls = "The list is " ++ what ls
  where what [] = "empty."
        what [x] = "a singleton list."
        what xs = "a longer list."
