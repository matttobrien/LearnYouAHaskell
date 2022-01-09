-- data keyword
data Bool = False | True

{-
the first two fields are the coordinates of its center, and the third one is its radius. 
The Rectangle value constructor has four fields that accept floats. The first two act as 
the coordinates to its upper-left corner, and the second two act as coordinates to its 
lower-right corner.
-}
data Shape = Circle Float Float Float | Rectangle Float Float Float Float

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

-- record syntax for defining custom types
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String } deriving (Show)

-- type synomymns
type PhoneNumber = String
type Name = String
type PhoneBook = [(Name, PhoneNumber)]
{-
Haskell programmers give type synonyms to the String type when they want to convey more 
information about the strings in their functions—what they actually represent.
-}
phoneBook =
  [("betty", "555-2938")
  ,("bonnie", "452-2928")
  ,("patsy", "493-2928")
  ,("lucille", "205-2928")
  ,("wendy", "939-8282")
  ,("penny", "853-2492")
]
