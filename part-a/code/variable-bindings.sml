(* Variables *)
val x = 1
(* static environment: x : int *)
(* dynamic environment: x --> 1 *)

val y = 9
(* static environment: y : int *)
(* dynamic environment: x --> 1 *)

val z = x + y
(* static environment: x : int, y : int, z : int *)
(* dynamic environment: x --> 1, y --> 9, z --> 10 *)
