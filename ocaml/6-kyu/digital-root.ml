let digital_root (n : int) : int =
    if n = 0 then 0
    else 1 + ((n - 1) mod 9)
