(* Shadowing *)

val a = 12

(* a : int
   a -> 12*)

val b = a * 2
(* b --> 24 *)

val a = 5
(* a --> 5, b --> 24 *)

val a = a + 5
(* a --> 10 *)


