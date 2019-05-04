fun sum_list(ls : int list) =
    if null ls
    then 0
    else hd ls + sum_list(tl ls)

val sum = sum_list([1, 3, 4])
(* sum --> 8 *)


fun list_product(ls : int list) =
    if null ls
    then 1
    else hd ls * list_product(tl ls)

val prod = list_product([1, 2, 3])
(* prod --> 6 *)


fun countdown(x : int) =
    if x = 0
    then []
    else x :: countdown(x - 1)

val c = countdown(10)


fun append(xs : int list, ys : int list) =
    if null xs
    then ys
    else (hd xs) :: append((tl xs), ys)

val a = append([1, 2, 3], [4, 5, 6])
(* a --> [1, 2, 3, 4, 5, 6] *)


fun sum_pair_list(xs : (int * int) list) =
    if null xs
    then 0
    else #1 (hd xs) + #2 (hd xs) + sum_pair_list(tl xs)

fun firsts(xs : (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs)) :: firsts(tl xs)

val fi = firsts([(3,5),(8,6)])
(* fi --> [3, 8] *)
