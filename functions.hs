-- functions can take in other functions
-- this one takes in a function and applys it twice
applyTwice :: (a -> a) -> a -> a
  applyTwice f x = f (f x)

-- implementation of zipwith
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- implementation of flip
flip' :: (a -> b -> c) -> b -> a -> c
  flip' f y x = f x y

-- implementation of map
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map f xs

-- implementation of filter
filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p (x:xs)
  | p x       = x : filter p xs
  | otherwise = filter p xs

-- lambdas can be written using \
currAddThree = map (+3) [1,6,3,2]
lambAddThree = map (\x -> x + 3) [1,6,3,2]

-- folding
sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

-- (\acc x -> acc + x) is the same as (+)
summ' :: (Num a) => [a] -> a
summ' = foldl (+) 0

-- implementation of map using foldr
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

-- implementation of map using foldl
reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

-- implementation of product using foldl
product' :: (Num a) => [a] -> a
product' = foldl (*) 1

-- scans report all the intermediate accumulator states in the form of a list
scanlAdd = scanl (+) 0 [3,5,2,1]
scanrAdd = scanr (+) 0 [3,5,2,1]

-- $ function is right-associative
-- sum (map sqrt [1..130]) 
-- sum $ map sqrt [1..130]

-- function composition is defined like this: (f ◦ g)(x) = f(g(x))
-- in haskell, it is defined using the . function
example = map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]
better = map (negate . abs) [5,-3,-6,7,-3,2,-19,24]


