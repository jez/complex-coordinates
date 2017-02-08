--
-- "class based" representation
--
-- Easy to add one more implementation representation for a fixed set of methods
--
module ComplexTC where

import Quadrant

class Complex a where
  dist :: a -> Float
  quad :: a -> Quadrant


data Cart  = Cart  {x :: Float, y :: Float}
           deriving (Show, Eq)

instance Complex Cart where
  dist (Cart x y) = (x * x) + (y * y)

  quad (Cart x y) | x >= 0 && y >= 0 = I
  quad (Cart x y) | x <  0 && y >= 0 = II
  quad (Cart x y) | x <  0 && y <  0 = III
  quad (Cart x y) | x >= 0 && y <  0 = IV


data Polar = Polar {r :: Float, t :: Float}
           deriving (Show, Eq)

instance Complex Polar where
  dist (Polar r t) = r * r

  quad (Polar r t) |             t <    0 = quad (Polar r (t + 360))
  quad (Polar r t) | t >=   0 && t <=  90 = I
  quad (Polar r t) | t >   90 && t <= 180 = II
  quad (Polar r t) | t >  180 && t <  270 = III
  quad (Polar r t) | t >= 270 && t <  360 = IV
  quad (Polar r t) | t >= 360             = quad (Polar r (t - 360))
