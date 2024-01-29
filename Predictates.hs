--
-- EPITECH PROJECT, 2024
-- SUJET WORKSHOP
-- File description:
-- Predictates
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
