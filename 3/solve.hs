primes :: [Integer]
primes = 2:filter (isPrime) [3,5..]

isPrime :: Integer -> Bool
isPrime n = all (\p -> n `mod` p /= 0) $ takeWhile (\p -> p * p <= n) primes

factors :: Integer -> [Integer]
factors n = factor n primes
    where
        factor n (p:ps)
            | p*p > n           = [n]
            | n `mod` p == 0    = p:factor (n `div` p) (p:ps)
            | otherwise         = factor n ps

solveIt :: Integer
solveIt = last $ factors 600851475143

main :: IO ()
main = print $ solveIt
