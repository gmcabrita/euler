rsa :: Integral a => a -> a -> a
rsa p q = sum $ filter (\e -> gcd e (ps*qs) == 1 && gcd (e-1) ps == 2 && gcd (e-1) qs == 2) e
    where
        ps = p-1
        qs = q-1
        e = [2..ps*qs-1]

solveIt :: Integer
solveIt = rsa 1009 3643

main :: IO ()
main = print $ solveIt
