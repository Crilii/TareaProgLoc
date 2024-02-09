aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio * (1 - descuento)

-- Función para aplicar el IVA a un precio
aplicarIVA :: Float -> Float -> Float
aplicarIVA precio iva = precio * (1 + iva)

-- Función para calcular el precio final de la cesta
calcularPrecioFinal :: [(String, Float, Float)] -> (Float -> Float) -> Float
calcularPrecioFinal cesta funcionPrecioFinal = sum $ map (\(nombre, precio, descuento) -> precio * funcionPrecioFinal (descuento)) cesta


funcionLista :: (a -> b) -> [a] -> [b]
funcionLista _ [] = []
funcionLista f (x:xs) = f x : funcionLista f xs


--calcular longitud de palabra

longitudPalabras :: String -> [(String, Int)]
longitudPalabras oracion = map (\palabra -> (palabra, length palabra)) (words oracion)


--notas en calificaciones

calificaciones :: [(String, Float)] -> [(String, String)]
calificaciones calif = [(materia, calificacion) | (materia, mark) <- calif,let calificacion| mark >= 95 = "Excelente"| mark >= 85 = "Notable"| mark >= 75 = "Bueno"| mark >= 70 = "Suficiente"| otherwise  = "Desempeño insuficiente"]

--modulod e vector

vectorModul :: [Float] -> Float
vectorModul vector = sqrt (sum [x * x | x <- vector])


--valores atipicos
atipicos :: [Float] -> [Float]
atipicos xs =
  let mean = sum xs / fromIntegral (length xs)
      stdDev = sqrt $ sum [(x - mean) ^ 2 | x <- xs] / fromIntegral (length xs)
  in [x | x <- xs, abs ((x - mean) / stdDev) > 3]
