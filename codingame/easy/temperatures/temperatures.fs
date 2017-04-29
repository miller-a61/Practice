(* Auto-generated code below aims at helping you parse *)
(* the standard input according to the problem statement. *)
open System

let n = int(Console.In.ReadLine()) (* the number of temperatures to analyse *)
let temps = Console.In.ReadLine() (* the n temperatures expressed as integers ranging from -273 to 5526 *)
let mutable temp = int
let mutable closest = 5527

let splitLine = (fun (line : string) -> Seq.toList (line.Split ' '))

let result = splitLine temps

if (String.length temps = 0) then
    closest <- 0
else
    for value in result do
        let temp = value |> int
        if (abs temp = abs closest && closest < 0) then
            closest <- temp
        if (abs temp < abs closest) then
            closest <- temp

printfn "%i" closest