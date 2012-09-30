import Data.Char

group :: Int -> [a] -> [[a]]
group _ [] = []
group n p = take n p:group n (tail p)

solveIt :: (Ord c, Num c) => [c] -> c
solveIt n = maximum $ map product $ group 5 $ n

main :: IO ()
main = do f <- readFile "input"
          let digits = map digitToInt $ concat $ lines f
          print $ solveIt digits
