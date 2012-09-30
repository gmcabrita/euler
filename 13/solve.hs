import Data.Char

solveIt :: String -> [Char]
solveIt n = take 10 $ show $ sum (map read (lines n) :: [Integer])

main :: IO ()
main = do f <- readFile "input"
          print $ solveIt f
