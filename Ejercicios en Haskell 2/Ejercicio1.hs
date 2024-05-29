import Text.Printf (printf)


seno :: Double -> Double
seno x = sin x

coseno :: Double -> Double
coseno x = cos x

tangente :: Double -> Double
tangente x = tan x

exponencial :: Double -> Double
exponencial x = exp x

logNeperiano :: Double -> Double
logNeperiano x = log x

mostrarTabla :: (Double -> Double) -> Double -> IO ()
mostrarTabla funcion valor = do
    putStrLn "Entero | Resultado"
    putStrLn "-------------------"
    mapM_ (\x -> printf "%6.0f | %10.6f\n" x (funcion x)) [1.0,2.0..valor]

main :: IO ()
main = do
    putStrLn "Calculadora Científica"
    putStrLn "1. Seno"
    putStrLn "2. Coseno"
    putStrLn "3. Tangente"
    putStrLn "4. Exponencial"
    putStrLn "5. Logaritmo Neperiano"
    putStrLn "Seleccione la función a aplicar (1-5):"
    opcion <- getLine
    putStrLn "Ingrese el valor:"
    valor <- getLine
    let funcion = case opcion of
                    "1" -> seno
                    "2" -> coseno
                    "3" -> tangente
                    "4" -> exponencial
                    "5" -> logNeperiano
                    _   -> error "Opción no válida"
    putStrLn "Tabla de resultados:"
    mostrarTabla funcion (read valor)