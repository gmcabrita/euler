primes :: [Integer]
primes = 2:filter (isPrime) [3,5..]

isPrime :: Integer -> Bool
isPrime n = all (\p -> n `mod` p /= 0) $ takeWhile (\p -> p * p <= n) primes

solveIt :: Integer
solveIt = primes !! 10000

main :: IO ()
main = print $ solveIt
