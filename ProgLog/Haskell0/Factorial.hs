factor :: Integer -> Integer
factor 0 = 1
factor n = product [1 .. n]

main = print (factor 5)