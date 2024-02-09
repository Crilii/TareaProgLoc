applyDiscount :: Float -> Float -> Float
applyDiscount price discount = price * (1 - discount)

applyIVA :: Float -> Float -> Float
applyIVA price iva = price * (1 + iva)

applyDiscountOrIVA :: [(String, Float)] -> (Float -> Float -> Float) -> Float
applyDiscountOrIVA products func = sum [func price value | (product, price) <- products]


--funcion de lista

mapFunction :: (a -> b) -> [a] -> [b]
mapFunction _ [] = []
mapFunction f (x:xs) = f x : mapFunction f xs


--calcular longitud de palabra

wordLengths :: String -> [(String, Int)]
wordLengths sentence = map (\word -> (word, length word)) (words sentence)


--notas en calificaciones

gradeConversion :: [(String, Float)] -> [(String, String)]
gradeConversion grades = [(subject, grade) | (subject, mark) <- grades,let grade| mark >= 95 = "Excelente"| mark >= 85 = "Notable"| mark >= 75 = "Bueno"| mark >= 70 = "Suficiente"| otherwise  = "Desempeño insuficiente"]

--modulod e vector

vectorModulus :: [Float] -> Float
vectorModulus vector = sqrt (sum [x * x | x <- vector])


--valores atipicos
outliers :: [Float] -> [Float]
outliers xs =
  let mean = sum xs / fromIntegral (length xs)
      stdDev = sqrt $ sum [(x - mean) ^ 2 | x <- xs] / fromIntegral (length xs)
  in [x | x <- xs, abs ((x - mean) / stdDev) > 3]
