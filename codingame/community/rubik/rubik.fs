open System

let N = int(Console.In.ReadLine())
let M = N * 6 * (N - 2) + 8
let countCube N =
    match N with
    | var1 when var1 > 1 -> printfn "%i" M
    | _ -> printfn "%i" N
        
countCube N

