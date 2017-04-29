open System

let token = (Console.In.ReadLine()).Split [|' '|]
let lightX = int(token.[0])
let lightY = int(token.[1])
let mutable initialTX = int(token.[2])
let mutable initialTY = int(token.[3])
let mutable ns = ""
let mutable ew = ""
(* game loop *)
while true do
    let remainingTurns = int(Console.In.ReadLine()) (* The remaining amount of turns Thor can move. Do not remove this line. *)
    
    if (initialTX < lightX) then
        ew <- "E"
        initialTX <- initialTX - 1
    else if (initialTX > lightX) then
        ew <- "W"
        initialTX <- initialTX + 1
    else
        ew <- ""

    if (initialTY < lightY) then
        ns <- "S"
        initialTY <- initialTY + 1
    else if (initialTY > lightY) then
        ns <- "N"
        initialTY <- initialTY - 1
    else 
        ns <- ""

    printfn "%s%s" ns ew
    ()
