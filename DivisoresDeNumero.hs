divisores :: Int -> [Int]
divisores n = [x | x <- [1 .. n], n `mod` x == 0]

main :: IO ()
main = do
  putStrLn "Ingrese un número:"
  input <- getLine
  let numero = read input :: Int
      listaDivisores = divisores numero
  putStrLn $ "Los divisores de " ++ show numero ++ " son: " ++ show listaDivisores