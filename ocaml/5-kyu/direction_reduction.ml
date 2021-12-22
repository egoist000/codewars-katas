let dir_to_coord = function
  | "NORTH" ->
      (0, 1)
  | "SOUTH" ->
      (0, -1)
  | "WEST" ->
      (1, 0)
  | "EAST" ->
      (-1, 0)
  | _ ->
      (0, 0)

let rec reduceDir (ls : string list) : string list =
  let rec aux tmp = function
    | [] ->
        tmp
    | [x] ->
        tmp @ [x]
    | d1 :: d2 :: drest ->
        let x1, y1 = dir_to_coord d1 in
        let x2, y2 = dir_to_coord d2 in
        if (x1 + x2, y1 + y2) = (0, 0) then reduceDir (tmp @ drest)
        else aux (tmp @ [d1]) (d2 :: drest)
  in
  aux [] ls
