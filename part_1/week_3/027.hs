{-

Составьте список сумм соответствующих элементов трех заданных списков.

Длина результирующего списка должна быть равна длине самого длинного из заданных списков,
при этом «закончившиеся» списки не должны давать вклада в суммы.

GHCi> sum3 [1,2,3] [4,5] [6]
[11,7,3]

 -}

import Data.List

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 a b c = calculate $ transpose [a, b, c]
  where
    calculate as = reverse $ calc [] as
      where
        calc a [] = a
        calc a (x : xs) = calc (sum x : a) xs