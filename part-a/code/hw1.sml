(* 1. Write a function is_older that takes two dates and evaluates to true or false. It evaluates to true if
the first argument is a date that comes before the second argument. (If the two dates are the same, 
the result is false.) *)

fun is_older(d1 : int*int*int, d2 : int*int*int) =
  if (#1 d1) < (#1 d2)
  then true
  else
    if (#1 d1) = (#1 d2) andalso (#2 d1) < (#2 d2)
    then true
    else
      if (#1 d1) = (#1 d2) andalso (#2 d1) = (#2 d2) andalso (#3 d1) < (#3 d2) andalso d1 <> d2
      then true
      else false

(* 2. Write a function number_in_month that takes a list of dates and a month (i.e., an int)
and returns how many dates in the list are in the given month. *)

fun number_in_month(dx : (int*int*int) list, m : int) =
  if null dx
  then 0
  else
    if (#2 (hd dx)) = m
    then
      number_in_month(tl dx, m) + 1
    else number_in_month(tl dx, m)

(* 3. Write a function number_in_months that takes a list of dates and a list of months (i.e., an int list)
and returns the number of dates in the list of dates that are in any of the months in the list of months.
Assume the list of months has no number repeated. Hint: Use your answer to the previous problem. *)

fun number_in_months(dx : (int*int*int) list, ms : int list) =
  if null ms
  then 0
  else
    number_in_month(dx, hd ms) + number_in_months(dx, tl ms)

(* 4. Write a function dates_in_month that takes a list of dates and a month (i.e., an int) and returns a
list holding the dates from the argument list of dates that are in the month. The returned list should
contain dates in the order they were originally given. *)

fun dates_in_month(ds : (int*int*int) list, m : int) =
  if null ds
  then []
  else
     if (#2 (hd ds)) = m
     then hd ds :: dates_in_month(tl ds, m)
     else dates_in_month(tl ds, m)

(* 5. Write a function dates_in_months that takes a list of dates and a list of
months (i.e., an int list) and returns a list holding the dates from the argument list of dates
that are in any of the months in the list of months. Assume the list of months has no number
repeated. Hint: Use your answer to the previous problem and SML’s list-append operator (@). *)

fun dates_in_months(ds : (int*int*int) list, ms : int list) =
  if null ms
  then []
  else
    dates_in_month(ds, hd ms) @ dates_in_months(ds, tl ms)
