doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100 then x else x * 2

-- else is mandatory!
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

-- ' is a valid character, it is normally used after a functions name to denote a strict function
conanO'Brien = "It's a-me, Conan O'Brien!"

-- lists contain elements of the same type
lostNumbers = [4,8,15,16,23,42]

-- strings are treated like lists
string = "hello" ++ " " ++ "world"

addToFront = 'A':" SMALL CAT"

-- indexing
index = [9.4,33.2,96.2,11.2,23.25] !! 1

-- lists can be compared!!
less = [3,4,2] < [3,4,3]
greater = [3,2,1] > [2,1,0]
equal = [1,2,3] == [1,2,4]

-- built in list functions such as
len = length [5,4,3,2,1]

-- take function
firstThree = take 3 [1,2,3,4]

-- range
longList = [1..25]

-- list comprehension
listComp = [ x * 2 | x <- [1..10], x * 2 >= 12 ]

-- tuples can store elements of different types, however the size is fixed
tupl = (3, 'a', "hello")

-- all valid right triangles with side lengths [1..10]
rightTriangles = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2 ]
