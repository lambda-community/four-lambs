module Fractals.Types where
import Prelude hiding (Real)


-- | Complex numbers, the real part is on the left
-- the imaginary part is on the right
type Real = Double
type Imaginary = Double
type Complex = (Real, Imaginary)
