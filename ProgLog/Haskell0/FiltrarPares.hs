filtrarPar :: [Int] -> [Int]
filtrarPar lista = filter even lista

main :: IO ()
main = do
    putStrLn "Ingrese una lista de ints: "
    input <- getLine
    let lista = map read $ words input :: [Int]
        listaFiltrada = filtrarPar lista
    putStrLn $ "La lista filtrada de pares es: " ++ show listaFiltrada