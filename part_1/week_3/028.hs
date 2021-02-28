{-

Напишите функцию groupElems которая группирует одинаковые элементы в списке (если они идут подряд)
и возвращает список таких групп.

GHCi> groupElems []
[]
GHCi> groupElems [1,2]
[[1],[2]]
GHCi> groupElems [1,2,2,2,4]
[[1],[2,2,2],[4]]
GHCi> groupElems [1,2,3,2,4]
[[1],[2],[3],[2],[4]]

Разрешается использовать только функции, доступные из библиотеки Prelude.

 -}

groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems a = helper [] a
  where
    helper as [] = reverse as
    helper [] (x : xs) = helper [[x]] xs
    helper ys (x : xs) =
      if x == (head . head) ys
        then helper ((x : head ys) : tail ys) xs
        else helper ([x] : ys) xs
