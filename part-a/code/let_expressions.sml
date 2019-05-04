fun ex() =
    let
      val x = 10
    in
      x + 2
    end

val e = ex()
(* e --> 12 *)

fun le() =
    let
      val x = (let val x = 20 in x * 2 end)
    in
      x + (let val z = 10 in z - 5 end)
    end

val l = le()
(* l --> 45 *)
