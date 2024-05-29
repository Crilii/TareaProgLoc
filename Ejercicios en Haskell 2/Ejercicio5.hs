type Inmueble = (Int, Int, Int, Bool, String) 
type Precio = Double

precioInmueble :: Inmueble -> Precio
precioInmueble (año, metros, habitaciones, garaje, zona)
    | zona == "A" = precio * (1 - fromIntegral (2024 - año) / 100)
    | zona == "B" = precio * (1 - fromIntegral (2024 - año) / 100) * 1.5
    where
        precio = fromIntegral (metros * 1000 + habitaciones * 5000 + if garaje then 15000 else 0)

buscarInmuebles :: [Inmueble] -> Precio -> [(Inmueble, Precio)]
buscarInmuebles inmuebles presupuesto = map agregarPrecio $ filter (\inmueble -> precioInmueble inmueble <= presupuesto) inmuebles
    where
        agregarPrecio inmueble = (inmueble, precioInmueble inmueble)

-- Ejemplo de uso
inmuebles :: [Inmueble]
inmuebles = [
    (2000, 100, 3, True, "A"),
    (2012, 60, 2, True, "B"),
    (1980, 120, 4, False, "A"),
    (2005, 75, 3, True, "B"),
    (2015, 90, 2, False, "A")
    ]

main :: IO ()
main = do
    let presupuesto = 100000
        inmueblesFiltrados = buscarInmuebles inmuebles presupuesto
    putStrLn "Inmuebles encontrados:"
    mapM_ print inmueblesFiltrados