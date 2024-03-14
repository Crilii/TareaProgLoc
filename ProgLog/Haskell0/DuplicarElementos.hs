dupEle :: [Int] -> [Int]
dupEle lista = concat [[x, x] | x <- lista]

main :: IO ()
main = do
    putStrLn "Ingrese una lista de numeros enteros: "
    input <- getLine
    let lista = map read $ words input :: [Int]
        listaDup = dupEle lista
    putStrLn $ "La lista ya duplicada es: " ++ show listaDup