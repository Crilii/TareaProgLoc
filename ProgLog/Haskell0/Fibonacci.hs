fibonacci :: Int -> Int
fibonacci n
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

main :: IO ()
main = do
  putStrLn "Ingrese un entero."
  input <- getLine
  let n = read input :: Int
  putStrLn $ "El Resultado es: " ++ show (fibonacci n)