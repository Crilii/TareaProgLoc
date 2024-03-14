esPalindromo :: String -> Bool
esPalindromo str = str == reverse str

main :: IO ()
main = do
    putStrLn "Ingrese una cadena:"
    input <- getLine
    let resultado = if esPalindromo input
                        then "La cadena es un palíndromo."
                        else "La cadena no es un palíndromo."
    putStrLn resultado