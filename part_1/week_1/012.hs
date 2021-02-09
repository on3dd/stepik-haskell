{- Реализуйте функцию, находящую значение определённого интеграла от заданной функции ff на заданном интервале [a,b][a,b] методом трапеций. (Используйте равномерную сетку; достаточно 1000 элементарных отрезков.) -}

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = h * ((f a + f b) / 2 + sum)
  where
    h = (b - a) / 1000
    sum = s 0 f 1
    s acc f n
      | n == 1000 = acc
      | otherwise = s (acc + f (a + n * h)) f (n + 1)