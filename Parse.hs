--
-- EPITECH PROJECT, 2024
-- SUJET WORKSHOP
-- File description:
-- filterArr
--

import Data.Char (isDigit)

isOperator :: String -> Bool
isOperator "+" = True
isOperator "-" = True
isOperator "*" = True
isOperator "/" = True
isOperator _   = False

isNumber :: String -> Bool
isNumber = all isDigit

filterArr :: (a -> Bool) -> [a] -> [a]
filterArr _ [] = []
filterArr p (x:xs)
    | p x       = x : filterArr p xs
    | otherwise = filterArr p xs

parseLine :: [a] -> [a]
parseLine xs = filterArr isOperator xs ++ filterArr isNumber xs
