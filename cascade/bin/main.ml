(* 
f(n) = { original_clip, when n = 0
       { second_half(dm(orignal_clip, f(n - 1))), when n > 0
*)

(*
let rec cascade (n: int) : unit =
  match n with
  | _ when n < 0 -> raise (Invalid_argument "Negative n.")
  | 0 -> src
  | 1 -> second_half (dm src src)
  | _ -> second_half (dm (cascade n-2) (cascade n-1))
*)
