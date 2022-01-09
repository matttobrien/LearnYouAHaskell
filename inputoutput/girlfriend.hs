import System.IO
import Data.Char

main = do
  contents <- readFile "girlfriend.txt"
  writeFile "girlfriendcaps.txt" (map toUpper contents)

{-
another way using withFile

main = do
  withFile "girlfriend.txt" ReadMode (\handle -> do
    contents <- hGetContents handle
    writeFile "girlfriendcaps.txt" (map toUpper contents))
-}
