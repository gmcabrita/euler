fibonacci :: [Integer]
fibonacci = 0:1:zipWith (+) fibonacci (tail fibonacci)

solveIt :: Integer
solveIt = sum $ filter even $ takeWhile (<4000000) fibonacci

main :: IO ()
main = print $ solveIt
