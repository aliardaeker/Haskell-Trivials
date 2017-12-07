keepl :: Int -> [Int] -> [Int]
keepl k xs = counter k xs where
 counter 1 (y:ys) = y : counter k ys
 counter m (y:ys) = counter (m-1) ys
 counter _ [] = [] 