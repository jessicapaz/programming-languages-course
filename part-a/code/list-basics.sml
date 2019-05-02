(* Lists *)

(* empty list *)
val l = []

val x = [1, 2, 3, 4]

val y = 6::x
(* y --> [6, 1, 2, 3, 4]*)

val head = hd x
(* head --> 1 *)

val tail = tl x
(* tail --> [2, 3, 4] *)

val z = tl [2]
(* z --> [] *)

val is_null = null [1, 3]
(* is_null -> false *)

val is_null = null []
(* is_null -> true *)
