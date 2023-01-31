--1) What are the types of the following values

-- ['a','b', 'c'] :: [Char]

-- ('a','b', 'c') :: (Char,Char,Char)

-- [(False, '0'),(Trues,'1')] :: [(Bool,Char)]

-- ([False,True],['0','1']) :: ([Bool], [Char])

-- [tail, init, reverse] :: [[x] -> [x]]


--2) Write down definitions that have the following types; it does not matter what the definitions actually do as long as they are type correct

-- bools :: [Bool]
-- [True, True, True, False]

-- nums :: [[Int]]
-- [[1,2,3],[2,4,6],[1,3,5]]

-- add :: Int -> Int -> Int -> Int
-- add a b c -> a+b+c

-- copy :: a -> (a,a)
-- copy x -> (x,x)

-- apply :: (a -> b) -> a -> b
-- apply c d -> c d

--3)  What are the types of the following functions

-- second xs = head (tail xs)

second :: [a] -> a
second []= error  "Empty list"
second xs = head (tail xs)

-- swap (x,y) = (y,x)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

-- pair x y = (x,y)

pair :: a -> b -> (a,b)
pair x y = (x,y)

-- double x = x*2

double :: Num a=> a->a
double x = x*2

-- palindrome xs = reverse xs == xs

palindrome :: (Eq a) => [a] -> Bool
palindrome xs = reverse xs == xs

-- twice f x = f(f x)

{- 
twice :: (a-> a) -> a -> a
twice f x = f(f x) 
-}

--5) Why is it not feasible in general for function types to be instances of the Eq class? When is it feasible?
{- 
It is not viable to compare two functions because every function will always 
return a different output depending on its arguments

It may be feasible with not wide types such as Bool 
-}