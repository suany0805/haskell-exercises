-- 1) Work through the examples from this chapter using ghci
{-
--Gets the 1st element of a non-empty list
head [2,4,6]
2

--Removes the 1st elemnt of a non-empty list
tail [1,2,3,4,5]
[2,3,4,5]
--select the nth element of a list
[3,5,7,9] !!1
5
--Select the x first elements from a list
take 4 [1,2,3,4,5,6,7,8]
[1,2,3,4]

--Remove the 1st x elements from a list
drop 3 [1,2,3,4,5,6,7]
> [4,5,6,7]

--Calculates the length of a list
length [2,4,6,8,10]
5

--Calculate the sum of a list of numbers
sum [2,4,6,8,10]
30

--Calculate the product of a list of numbers
product[1,2,3,4,5,6,7,8,9]
362880

--Append 2 lists
[2,4,6]++[1,2,3]
[2,4,6,1,2,3]

--Reverse a list
reverse [2,4,6,8]
[8,6,4,2] -}

double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple x = double (double x)

{-
quadruple 10
40
 -}
--

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1 .. n]

average :: Foldable t => t Int -> Int
average ns = sum ns `div` length ns

-- 2) parenthesise the following numeric expressions

{-
> 2 ^ 3 *4
( 2 ^ 3) *4

> 2*3+4*5
(2*3)+(4*5)

> 2 + 3 * 4 ^ 5
2 +  (3 *(4 ^ 5))

-}

-- 3) Fix the syntactic errors
{-  N = a 'div' length xs
     where
        a=10
       xs=[1,2,3,4,5]
 -}

n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]

-- 4) Show how the function 'last' could be defined in terms of the library introduced in this chapter

myLast :: [a] -> a
myLast [] = error "Empty list"
myLast xs = head (reverse xs)

-- 5)Show how 'init'could be defined in two different ways
myInit1 :: [a] -> [a]
myInit1 [] = error "Empty list"
myInit1 xs = reverse (drop 1 (reverse xs))

myInit2 :: [a] -> [a]
myInit2 [] = error "Empty list"
myInit2 xs = take (length xs - 1) xs