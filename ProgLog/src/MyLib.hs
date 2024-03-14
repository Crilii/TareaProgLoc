module MyLib (
    fizzBuzz,
    esPrimo
) where

-- Función para determinar si un número es primo
esPrimo :: Int -> Bool
esPrimo n
  | n <= 1 = False
  | otherwise = not $ any (\x -> n `mod` x == 0) [2..(floor . sqrt $ fromIntegral n)]

-- Función para convertir números a su representación en letras en español
numerosEnLetras :: Int -> String
numerosEnLetras n
  | n == 0 = "cero"
  | n < 20 = unidades !! n
  | n < 100 = decenas !! (n `div` 10) ++ if n `mod` 10 == 0 then "" else " y " ++ numerosEnLetras (n `mod` 10)
  | n < 1000 = unidades !! (n `div` 100) ++ if n `mod` 100 == 0 then " cien" else " cientos " ++ numerosEnLetras (n `mod` 100)
  | n < 2000 = "mil " ++ numerosEnLetras (n `mod` 1000)
  | n < 1000000 = numerosEnLetras (n `div` 1000) ++ " mil " ++ numerosEnLetras (n `mod` 1000)
  | otherwise = error "Fuera de rango"
  where
    unidades = ["", "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve", "diez",
                "once", "doce", "trece", "catorce", "quince", "dieciséis", "diecisiete", "dieciocho", "diecinueve"]
    decenas = ["", "", "veinte", "treinta", "cuarenta", "cincuenta", "sesenta", "setenta", "ochenta", "noventa"]

-- Función principal que aplica las condiciones
fizzBuzz :: Int -> String
fizzBuzz n
  | esPrimo n = "FizzBuzz!"
  | otherwise = numerosEnLetras n
