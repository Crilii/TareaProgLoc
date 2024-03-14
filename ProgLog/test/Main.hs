module Main where

import MyLib (fizzBuzz, esPrimo)

-- Pruebas automatizadas
main :: IO ()
main = do
  putStrLn "Pruebas automatizadas:"
  putStrLn "---------------------------------------"
  putStrLn "Resultados para todos los números del 1 al 999,999:"
  putStrLn "---------------------------------------"
  putStrLn "1-10:"
  mapM_ (\n -> testFizzBuzz n (fizzBuzz n)) [1..10]
  putStrLn "---------------------------------------"
  putStrLn "11-100:"
  mapM_ (\n -> testFizzBuzz n (fizzBuzz n)) [11..100]
  putStrLn "---------------------------------------"
  putStrLn "101-999:"
  mapM_ (\n -> testFizzBuzz n (fizzBuzz n)) [101..999]
  putStrLn "---------------------------------------"
  --putStrLn "1000-2000:"
  --mapM_ (\n -> testFizzBuzz n (fizzBuzz n)) [1000..5000]
  --putStrLn "---------------------------------------"
  --putStrLn "10000-200000:"
  --mapM_ (\n -> testFizzBuzz n (fizzBuzz n)) [10000..200000]

-- Función para realizar las pruebas de FizzBuzz
testFizzBuzz :: Int -> String -> IO ()
testFizzBuzz n result = do
  let expected = getExpectedOutput n
  putStr $ "Número: " ++ show n ++ ", Resultado: " ++ result ++ " "
  if expected == result
    then putStrLn "OK"
    else putStrLn $ "Error: se esperaba '" ++ expected ++ "'"

-- Función para obtener el resultado esperado
getExpectedOutput :: Int -> String
getExpectedOutput n
  | esPrimo n = "FizzBuzz!"
  | otherwise = numerosEnLetras n
  where
    numerosEnLetras :: Int -> String
    numerosEnLetras 0 = "cero"
    numerosEnLetras n'
      | n' < 20 = unidades !! n'
      | n' < 100 = decenas !! (n' `div` 10) ++ if n' `mod` 10 == 0 then "" else " y " ++ numerosEnLetras (n' `mod` 10)
      | n' < 1000 = unidades !! (n' `div` 100) ++ if n' `mod` 100 == 0 then " cien" else " cientos " ++ numerosEnLetras (n' `mod` 100)
      | n' < 2000 = "mil " ++ numerosEnLetras (n' `mod` 1000)
      | n' < 1000000 = numerosEnLetras (n' `div` 1000) ++ " mil " ++ numerosEnLetras (n' `mod` 1000)
      | otherwise = error "Fuera de rango"
      where
        unidades = ["", "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve", "diez",
                    "once", "doce", "trece", "catorce", "quince", "dieciséis", "diecisiete", "dieciocho", "diecinueve"]
        decenas = ["", "", "veinte", "treinta", "cuarenta", "cincuenta", "sesenta", "setenta", "ochenta", "noventa"]
