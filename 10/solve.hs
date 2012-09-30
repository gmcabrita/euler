primes :: [Integer]
primes = 2:filter (isPrime) [3,5..]

isPrime :: Integer -> Bool
isPrime n = all (\p -> n `mod` p /= 0) $ takeWhile (\p -> p * p <= n) primes

solveIt :: Integer
solveIt = sum $ takeWhile (<2000000) primes

main :: IO ()
main = print $ solveIt
