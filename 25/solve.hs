fibonacci :: [Integer]
fibonacci = 0:1:zipWith (+) fibonacci (tail fibonacci)

main :: IO ()
main = print $ length $ takeWhile (<10^999) fibonacci
