menor20 :: Int -> String
menor20 n |
    n > 0 && n < 20 =
    let resp = words ("One Two Three Four Five Six Seven Eight nine Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen")
    in resp !! (n-1)

decenas :: Int -> String
decenas n | n >= 2 && n <= 9 = resp !! (n-2)
    where
        resp = words("Twenty Thirty Fourty Fifty Sixty Seventy Eighty Ninety")

num :: Int -> String
num n 
    | n  `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz!"
    | n  `mod` 5 == 0 = "Fizz!"
    | n  `mod` 3 == 0 = "Buzz!"
    | 1 <= n && n<20 = menor20(n) 
    | n `mod` 10 == 0 && n<100 = decenas(n `div` 10)
    | n < 100 = decenas(n `div` 10) ++ " " ++menor20(n `mod` 10)
    | n == 100 = "One hundred!"