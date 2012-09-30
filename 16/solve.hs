import Data.Char

solveIt :: Int
solveIt = sum $ map digitToInt $ concat $ [show $ 2^1000]

main :: IO ()
main = print $ solveIt
