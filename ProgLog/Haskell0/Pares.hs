numPar :: Int -> [Int]
numPar n = [x | x <- [0,2..n]]

main = print (numPar 8)