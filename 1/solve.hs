-- Alternative way:
altSolveIt :: Integer
altSolveIt = sum $ filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) $ [1..999]

solveIt :: Integer
solveIt = sum [ x | x<-[1..999], x`mod`3 == 0 || x`mod`5 == 0]

main :: IO ()
main = print $ solveIt
