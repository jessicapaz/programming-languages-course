datatype mytype = TwoInts of int * int
                | Str of string

fun f(x : mytype) =
  case x of
      TwoInts(i1, i2) => i1 + i2
    | Str s => String.size s
