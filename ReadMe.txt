Ali Arda Eker

Haskell programs are tested under Mac OS X El Capitan, Version 10.11.6
with GHC 8.2.1 and Hugs 98

1) Haskell function osublist lt that computes all sublists of a list lt that have an odd size (i.e., size of 1, 3, etc).
e.g. > sublist [1,2,3][[1],[2],[3], [1,2,3]]

2) Haskell function keepl k lt that keeps every k`th element of a list lt. 

e.g. > keepl 2 [3,4,5,6,7,8,9][4,6,8]3) Haskell function replic lt that replicates each element in lt into a list. If the element is k, the resulting list contains k copies of the same element. Error is returned if any element is a negative number. 
e.g. > replic [2,3,4,7,6][[2,2],[3,3,3],[4,4,4,4], [7,7,7,7,7,7,7], [6,6,6,6,6,6]]

4) Haskell function collect_atoms f that computes all boolean primitives of a propositional formula f.e.g. > collect_atoms (And (Implies (Atom True) (Atom False)) (Not (Atom False)) ) [True, False, False]

5) Haskell function eval f to evaluate term f according to standard definitions of propositional logic.e.g. > eval (And (Implies (Atom True) (Atom False)) (Not (Atom False)) ) False