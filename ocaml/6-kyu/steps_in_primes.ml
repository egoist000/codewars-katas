(* Primality test using 6k+-1 optimization. *)

let is_prime n =
    if n <= 3 then n > 1
    else if (n mod 2 = 0) || (n mod 3 = 0) then false
    else
        let rec loop i =
            if (i * i) > n then true 
            else if (n mod i = 0) || (n mod (i + 2) = 0) then false
            else loop (i + 6)
        in loop 5

let step g m n =
    let rec aux k =
        if k >= n then []
        else if is_prime k && is_prime (k + g) then [k; k + g]
        else aux (k + 1)
    in aux m


