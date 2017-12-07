replic1 [] = [] 
replic1 (x:xs)
 | (x < 0) = error "Negative Item Found"
 | otherwise = map replic3 (map replic2 [x]) ++ replic1 xs

replic2 :: Int -> [Int]
replic2 x 
 | (x < 1) = []
 | otherwise = replic2 (x - 1) ++ [x]

replic3 :: [Int] -> [Int]
replic3 [] = []
replic3 (x:xs) = (x + length xs) : replic3 xs

removeEmpty :: [[Int]] -> [[Int]]
removeEmpty [[]] = []
removeEmpty [] = []
removeEmpty (x:xs)
 | (x == []) = removeEmpty xs
 | otherwise = [x] ++ removeEmpty xs

replic [] = []
replic (xs) = removeEmpty(replic1(xs))