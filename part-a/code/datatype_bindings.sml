datatype mytype = TwoInts of int * int
                | Str of string
                | Pizza

val x = Str "Hello"
val y = TwoInts(1+2, 3+4)
val z = Pizza
val a = x
