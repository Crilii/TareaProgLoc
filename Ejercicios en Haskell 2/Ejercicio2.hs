filtrarPorFuncion :: (a -> Bool) -> [a] -> [a]
filtrarPorFuncion _ [] = []
filtrarPorFuncion funcion (x:xs)
    | funcion x = x : filtrarPorFuncion funcion xs
    | otherwise = filtrarPorFuncion funcion xs

main :: IO ()
main = do
    let listaOriginal = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    putStrLn "Lista original:"
    print listaOriginal
    putStrLn "Lista filtrada por ser mayor que 5:"
    print (filtrarPorFuncion (> 5) listaOriginal)