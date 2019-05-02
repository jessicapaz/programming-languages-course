fun sum (x : int, y : int) =
    x + y

val s = sum(5, 4)
(*s --> 9*)

fun pow(x : int, y : int) =
  if y = 0
  then 1
  else x * pow(x, y-1)

val p = pow(3, 2)
(* p --> 9 *)
