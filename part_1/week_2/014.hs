{-
Функция multSecond, перемножающая вторые элементы пар, реализована следующим образом

multSecond = g `on` h

g = undefined

h = undefined

Напишите реализацию функций g и h.
-}

import Data.Function (on)

multSecond = g `on` h

g = (*)

h = snd