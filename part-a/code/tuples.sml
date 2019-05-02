(* Tuples *)

fun sub_two_pairs(pr1 : int *int, pr2 : int * int) =
    ((#1 pr1) + (#1 pr2), (#2 pr1) + (#2 pr2))

val sub = sub_two_pairs((3, 8), (2, 4))
(* (5, 12) *)


fun sort_pair(pr : int * int) =
    if (#1 pr) < (#2 pr)
    then pr
    else (#2 pr, #1 pr)

val sort = sort_pair(8, 5)
(* (5, 8) *)
