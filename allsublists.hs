allSublists :: [Int] -> [[Int]]
allSublists [] = [[]]
allSublists (x:xs) = [x:sublist | sublist <- allSublists xs] ++ allSublists xs

removeEven :: [[Int]] -> [[Int]] 
removeEven [[]] = [[]]
removeEven [] = []
removeEven (x:xs)
 | ((mod (length x) 2) == 0) = removeEven xs
 | otherwise = [x] ++ removeEven xs

removeEmpty :: [[Int]] -> [[Int]]
removeEmpty [[]] = []
removeEmpty (x:xs)
 | (x == []) = removeEmpty xs
 | otherwise = [x] ++ removeEmpty xs

osublist :: [Int] -> [[Int]]
osublist (xs) = removeEmpty(removeEven (allSublists xs))