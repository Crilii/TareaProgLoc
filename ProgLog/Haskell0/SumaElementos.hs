sumList:: Integer -> Integer
sumList 0 = 0
sumList 1 = 1
sumList n = sumList (n-1) + sumList (n-2)

main = print (sumList 1)