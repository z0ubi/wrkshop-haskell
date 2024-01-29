--
-- EPITECH PROJECT, 2024
-- SUJET WORKSHOP
-- File description:
-- Main
--

import Operation
import System.Environment
import System.Exit

main :: IO ()
main = do
    putStrLn "Enter the first number: "
    x <- readLn
    putStrLn "Enter the second number: "
    y <- readLn
    putStrLn "Enter the operation (+, -, *): "
    op <- getLine
    case op of
        "+" -> print (addition x y)
        "-" -> print (substraction x y)
        "*" -> print (multiply x y)
        "`div`" -> print (divide x y)
        _   -> putStrLn "Invalid operation"
