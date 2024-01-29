--
-- EPITECH PROJECT, 2024
-- SUJET WORKSHOP
-- File description:
-- Operation
--

module Operation where
addition :: Int -> Int -> Int
addition x y = x + y

multiply :: Int -> Int -> Int
multiply x y = x * y

substraction :: Int -> Int -> Int
substraction x y = x - y

divide :: Int -> Int -> Maybe Int
divide x 0 = Nothing
divide x y = Just (x `div` y)
