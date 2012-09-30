solveIt :: Integer
solveIt = foldr1 lcm [1..20]

main :: IO ()
main = print $ solveIt 25202520
