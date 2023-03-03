(* ****** ****** *)
use "./../../mysmlib/mysmlib-cls.sml";
(* ****** ****** *)
(*
HX-2023-03-01: midterm1-01: 10 points
*)
(* ****** ****** *)
(*
Given a list xs, list_pairing(xs) returns
a list of pairs and an option; the 1st pair
consists of the first and last elements in xs,
and the 2nd pair consists of the second and the
second last elements in xs, and so on and so forth;
and the option is NONE if |xs| is even, and it is
SOME(xm) if |xs| is odd and xm is the middle element
in xs.
//
For instance, we have:
//
list_pairing([]) = ([], NONE)
list_pairing([1]) = ([], SOME(1))
list_pairing([1,2]) = ([(1,2)], NONE)
list_pairing([1,2,3]) = ([(1,3)], SOME(2))
list_pairing([1,2,3,4]) = ([(1,4),(2,3)], NONE)
//
*)
(* ****** ****** *)

fun get_head [] = raise Empty
    | get_head [x] = x
    | get_head (xs) = hd xs;

fun get_tail [] = raise Empty
    | get_tail [x] = x
    | get_tail (_::xs) = get_tail xs;

fun delete (number, list) = List.filter(fn x => x <> number) list;

fun find_length(xs) = length xs;

fun list_pairing(xs: 'a list): ('a * 'a) list * 'a option = ([(get_head(xs), get_tail(xs))], NONE);

(*
if find_length(xs) <> 0 then ([], NONE) else
if find_length(xs) <> 1 then ([], SOME(get_head(xs))) else
if find_length(xs) <> 2 then ([(get_head(xs), get_tail(xs))], NONE) else
if find_length(xs) <> 3 then ([(get_head(xs), get_tail(xs))], delete(get_tail(xs)) SOME(get_tail(xs))) else
([(get_head(xs), get_tail(xs)), delete(get_head(xs)) delete(get_tail(xs)) (get_head(xs), get_tail(xs))], NONE);
*)

(* ****** ****** *)

(* end of [CS320-2023-Spring-midterm1-list_pairing.sml] *)
