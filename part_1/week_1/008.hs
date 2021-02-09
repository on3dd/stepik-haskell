{- Измените определение функции fibonacci так, чтобы она была определена для всех целых чисел и порождала при отрицательных аргументах указанную последовательность. -}

fibonacci :: Integer -> Integer
fibonacci n
  | n == 0 = 0
  | n == 1 = 1
  | n >= 2 = fibonacci (n - 1) + fibonacci (n - 2)
  | otherwise = fibonacci (n + 2) - fibonacci (n + 1)