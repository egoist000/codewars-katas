(* This program tests the life of an evaporator containing a gas. 
 * We know the content of the evaporator (content in ml), 
 * the percentage of foam or gas lost every day 
 * (evap_per_day) and the threshold (threshold) in percentage 
 * beyond which the evaporator is no longer useful *)

(* The program reports the nth day (as an integer) 
 * on which the evaporator will be out of use. *)

(* example: evaporator(10, 10, 5) -> 29 *)
let evaporator _ (evapPerDay: float) (threshold: float): int =
    let rec aux currPerc day evapPerDay threshold =
        if currPerc <= threshold then 
            day
        else
            aux (currPerc -. (currPerc *. (evapPerDay /. 100.0))) (day + 1) evapPerDay threshold
    in aux 100.0 0 evapPerDay threshold

