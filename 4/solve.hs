solveIt :: Integer
solveIt = maximum [ n | p<-[100..999],
                        ps<-[p..999], -- p<-[100..999] is wasting time
                        let n = p * ps,
                        let s = show n,
                        s == reverse s ]

main :: IO ()
main = print $ solveIt
