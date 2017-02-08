--
-- "method based" representation
--
-- Easy to add one more method on the fixed representation of Cart or Polar
--
module ComplexADT where

import Quadrant

data Complex = Cart  {x :: Float, y :: Float}
             | Polar {r :: Float, t :: Float}
             deriving (Show, Eq)

dist :: Complex -> Float
dist (Cart x y) = (x * x) + (y * y)
dist (Polar r t) = r * r

quad :: Complex -> Quadrant
quad (Cart x y) | x >= 0 && y >= 0 = I
quad (Cart x y) | x < 0  && y >= 0 = II
quad (Cart x y) | x < 0  && y < 0  = III
quad (Cart x y) | x >= 0 && y < 0  = IV
quad (Polar r t) |             t <    0 = quad (Polar r (t + 360))
quad (Polar r t) | t >=   0 && t <=  90 = I
quad (Polar r t) | t >   90 && t <= 180 = II
quad (Polar r t) | t >  180 && t <  270 = III
quad (Polar r t) | t >= 270 && t <  360 = IV
quad (Polar r t) | t >= 360             = quad (Polar r (t - 360))
