open Batteries

let pi = 4.0 *. (atan 1.0)
let rnd10 x = 
  (x *. 1E10 |> int_of_float |> float_of_int) /. 1E10

let iter_pi epsilon =
    let rec aux iter appr =
        let pp = rnd10 (appr *. 4.) in
        if Float.abs(pp -. pi) < epsilon then (iter, pp)
        else 
            aux (iter + 1) 
            (((Float.pow (-1.) (float_of_int(iter))/.(float_of_int((2*iter)+1)))
            +. appr))
    in aux 0 0.
