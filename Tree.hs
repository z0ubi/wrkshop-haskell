module Tree where
data ASTree = Add ASTree ASTree
            | Sub ASTree ASTree
            | Mul ASTree ASTree
            | Div ASTree ASTree
            | Value Int
instance Show ASTree where
    show (Add e1 e2) = show e1 ++ " + " ++ show e2
    show (Sub e1 e2) = show e1 ++ " - " ++ show e2
    show (Mul e1 e2) = show e1 ++ " * " ++ show e2
    show (Div e1 e2) = show e1 ++ " / " ++ show e2
    show (Value n)   = show n

buildAST :: ([String], [String]) -> ASTree
buildAST ([], [val]) = Value (read val)
buildAST (ops, vals) = buildExprList ops (mapValues vals)

buildExprList :: [String] -> [ASTree] -> ASTree
buildExprList [] [expr] = expr
buildExprList (op:ops) (v1:v2:vs) = buildExprList ops (buildExpr v1 op v2 : vs)
buildExprList _ _ = error "Nombre d'opérateurs incorrect ou insuffisant"

mapValues :: [String] -> [ASTree]
mapValues = map (Value . read)
mapValues (x:xs) = Value (read x) : mapValues xs

buildExpr :: ASTree -> String -> ASTree -> ASTree
buildExpr e1 "+" e2 = Add e1 e2
buildExpr e1 "-" e2 = Sub e1 e2
buildExpr e1 "*" e2 = Mul e1 e2
buildExpr e1 "/" e2 = Div e1 e2

evaluateAST :: ASTree -> Int
evaluateAST (Add e1 e2) = evaluateAST e1 + evaluateAST e2
evaluateAST (Sub e1 e2) = evaluateAST e1 - evaluateAST e2
evaluateAST (Mul e1 e2) = evaluateAST e1 * evaluateAST e2
evaluateAST (Div e1 e2) = evaluateAST e1 `div` evaluateAST e2
evaluateAST (Value n) = n
