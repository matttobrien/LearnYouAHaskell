-- recursive def of the maximum function
maximum' :: (Ord a) => [a] -> a
  maximum' [] = error "maximum of empty list!"
  maximum' [x] = x
  maximum' (x:xs) = max x (maximum' xs)

-- recursive replicate
replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0    = []
  | otherwise = x : replicate' (n-1) x

-- recursive take
take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0   = []
    -- no otherwise so it falls down to the next pattern match
take' _ []     = []
take' n (x:xs) = x : take' (n-1) xs

-- recursive resverse
reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
