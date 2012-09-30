import Data.Char

fact :: (Num a) => a -> a
fact 0 = 1
fact n = n * fact (n-1)

solveIt :: Int
solveIt = sum $ map digitToInt $ concat $ [show $ fact 100]

main :: IO ()
main = print $ solveIt
