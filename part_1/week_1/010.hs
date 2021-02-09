{- Реализуйте функцию seqA, находящую элементы следующей рекуррентной последовательности. -}

seqA :: Integer -> Integer
seqA n
  | n == 0 = 1
  | n == 1 = 2
  | n == 2 = 3
  | otherwise =
    let recurrently acc1 acc2 acc3 0 = acc1
        recurrently acc1 acc2 acc3 n = recurrently acc2 acc3 ((acc3 + acc2) - 2 * acc1) (n -1)
     in recurrently 1 2 3 n
