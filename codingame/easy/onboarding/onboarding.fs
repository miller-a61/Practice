(* CodinGame planet is being attacked by slimy insectoid aliens. *)
(* <--- *)
(* Hint:To protect the planet, you can implement the pseudo-code provided in the statement, below the player. *)
open System


(* game loop *)
while true do
    let enemy1 = Console.In.ReadLine() (* name of enemy 1 *)
    let dist1 = int(Console.In.ReadLine()) (* distance to enemy 1 *)
    let enemy2 = Console.In.ReadLine() (* name of enemy 2 *)
    let dist2 = int(Console.In.ReadLine()) (* distance to enemy 2 *)
    
    (* Write an action using printfn *)
    (* To debug: Console.Error.WriteLine("Debug message") *)
    let distTest dist1 dist2 = 
        match dist1 with
        | var1 when var1 < dist2 -> printfn "%s" enemy1
        | _ -> printfn "%s" enemy2
        
    distTest dist1 dist2

