datatype exp = Constant of int
            | Negate of exp
            | Add of exp * exp
            | Multiply of exp * exp

fun eval e =
  case e of
       Constant i => i
     | Negate e1 => ~ (eval e1)
     | Add(e1, e2) => (eval e1) + (eval e2)
     | Multiply(e1, e2) => (eval e1) * (eval e2)

val test = eval(Negate(Add(Constant 4, Constant 6)))
