-- integer
factorial :: Integer -> Integer
factorial n = product [1..n]

--float
circumference :: Float -> Float
circumference r = 2 * pi * r

-- double
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- show type class, shows value represented as a string
sho = show 56

-- read is the opposite of show
red = read "9"

-- type annotation to cast type to read instance
redFloat = read "9"
