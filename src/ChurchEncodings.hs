module ChurchEncodings where

true  = \t f -> t
false = \t f -> f

show' b = b "verdadero" "falso"

if' = \b t f -> b t f

not' = (\b -> if' b false true)

and' = \x y -> if' x y false

or' = \x y -> if' x true y


--- evaluating boolean expressions

result = show' $ if' (and' true true) true false
