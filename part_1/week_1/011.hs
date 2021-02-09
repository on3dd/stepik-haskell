{- Реализуйте функцию, находящую сумму и количество цифр десятичной записи заданного целого числа. -}

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = helper (abs x) 0 0
  where
    helper 0 0 0 = (0, 1)
    helper 0 sum count = (sum, count)
    helper x sum count = helper (div x 10) (sum + mod x 10) (count + 1)