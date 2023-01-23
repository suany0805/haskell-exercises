
{- 
double (double 2)
double(2)+ double(2)
(2+2)   +  (2+2) 
4+4
8 -}


{- 
sum[x]=x
sum[2] 
-}

{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

myproduct:: Num a => [a]-> a 
myproduct []=1
myproduct (n:ns) = n * myproduct ns
-- product [2,3,4]

-- 3) moving qsort larger to the beginning and qsort smaller to the end 

qsort1:: Ord a => [a] -> [a]
qsort1 [] = []
qsort1 (x:xs) = qsort1 large ++[x] ++ qsort1 small
               where 
                  large = [b | b <- xs , b > x] 
                  small = [a | a <- xs , a <= x]

-- 4) duplicates will be deleted
qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where 
                  smaller = [a| a <- xs , a <x]
                  larger = [b | b <- xs , b>x]
