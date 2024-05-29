data Calificacion = A | B | C | D | F deriving (Show)

asignarCalificacion :: Double -> Calificacion
asignarCalificacion nota
    | nota >= 90 = A
    | nota >= 80 = B
    | nota >= 70 = C
    | nota >= 60 = D
    | otherwise  = F

asignarCalificaciones :: [Double] -> [Calificacion]
asignarCalificaciones = map asignarCalificacion

main :: IO ()
main = do
    let notas = [85, 95, 60, 75, 45]
    putStrLn "Lista de notas:"
    print notas
    putStrLn "Lista de calificaciones:"
    print (asignarCalificaciones notas)