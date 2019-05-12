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

(* 6. Write a function get_nth that takes a list of strings and an int n and returns the nth element of the
list where the head of the list is 1st. Do not worry about the case where the list has too few elements:
your function may apply hd or tl to the empty list in this case, which is okay. *)

fun get_nth(s : string list, n : int) =
  if null s
  then ""
  else
    if n = 1
    then hd s
    else
      get_nth(tl s, n - 1)


(* 7. Write a function date_to_string that takes a date and returns a string of
the form January 20, 2013 (for example). Use the operator ^ for concatenating
strings and the library function Int.toString for converting an int to a
string. For producing the month part, do not use a bunch of conditionals.
Instead, use a list holding 12 strings and your answer to the previous
problem. For consistency, put a comma following the day and use
capitalized English month names: January, February, March, April,
May, June, July, August, September, October, November, December. *)

fun date_to_string(d : int*int*int) =
  let
    val year = Int.toString(#1 d)
    val day = Int.toString(#3 d)
    val string_months = ["January", "February", "March", "April", "May", "June",
       "July", "August", "September", "October", "November", "December"]
    val month = get_nth(string_months, #2 d)
  in month ^ " " ^ day ^ ", " ^ year
  end

(* 8. Write a function number_before_reaching_sum that takes an int called sum, which you can assume
is positive, and an int list, which you can assume contains all positive numbers, and returns an int.
You should return an int n such that the first n elements of the list add to less than sum, but the first
n + 1 elements of the list add to sum or more. Assume the entire list sums to more than the passed in
value; it is okay for an exception to occur if this is not the case. *)

fun number_before_reaching_sum(sum : int, xs : int list) =
  if sum <= hd xs
  then 0
  else
    number_before_reaching_sum(sum - hd xs, tl xs) + 1

(* 9. Write a function what_month that takes a day of year (i.e., an int between 1 and 365) and returns
what month that day is in (1 for January, 2 for February, etc.). Use a list holding 12 integers and your
answer to the previous problem. *)

fun what_month(d : int) =
  number_before_reaching_sum(d, [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]) + 1
