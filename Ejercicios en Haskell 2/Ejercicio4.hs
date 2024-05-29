import qualified Data.Map as Map

data Calificacion = Excelente | Notable | Bueno | Suficiente | Insuficiente deriving (Show)

asignarCalificacion :: Double -> Calificacion
asignarCalificacion nota
    | nota >= 95 = Excelente
    | nota >= 85 = Notable
    | nota >= 75 = Bueno
    | nota >= 70 = Suficiente
    | otherwise  = Insuficiente

procesarNotas :: Map.Map String Double -> Map.Map String Calificacion
procesarNotas = Map.map (asignarCalificacion)

main :: IO ()
main = do
    let notas = Map.fromList [("Matematicas", 92), ("Historia", 78), ("Fisica", 64), ("Arte", 88)]
        notasProcesadas = procesarNotas notas
    putStrLn "Notas originales:"
    print notas
    putStrLn "Notas procesadas:"
    print notasProcesadas