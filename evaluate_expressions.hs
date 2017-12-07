data Formula
 = Atom Bool 
 | And Formula Formula
 | Or Formula Formula
 | Implies Formula Formula
 | Not Formula

eval :: Formula -> Bool
eval (Atom a) = a
eval (And f1 f2) = eval f1 && eval f2
eval (Or f1 f2) = eval f1 || eval f2
eval (Implies f1 f2)
 | ((eval f1) == True) && ((eval f2) == False) = False
 | otherwise = True
eval (Not f) = not (eval f)

collect_atoms :: Formula -> [Bool]
collect_atoms (Atom a) = [a]
collect_atoms (Or f1 f2) = collect_atoms f1 ++ collect_atoms f2
collect_atoms (And f1 f2) = collect_atoms f1 ++ collect_atoms f2
collect_atoms (Implies f1 f2) = collect_atoms f1 ++ collect_atoms f2
collect_atoms (Not f) = collect_atoms f