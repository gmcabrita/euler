solveIt :: [(Integer, Integer, Integer)]
solveIt = [ (n,p,ps) | ps<-[1..500],
                       p<-[1..ps],
                       n<-[1..p],
                       n^2 + p^2 == ps^2,
                       n+p+ps == 1000 ]

main :: IO ()
main = print $ solveIt
