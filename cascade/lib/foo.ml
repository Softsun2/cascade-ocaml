let foo () : string = "bar"

let%test _ = foo () = "bar"
let%test _ = foo () = "barbar"

