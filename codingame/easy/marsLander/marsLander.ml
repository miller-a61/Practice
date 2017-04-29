(* Auto-generated code below aims at helping you parse *)
(* the standard input according to the problem statement. *)

let surfacen = int_of_string (input_line stdin) in (* the number of points used to draw the surface of Mars. *)
for i = 0 to surfacen - 1 do
    (* landx: X coordinate of a surface point. (0 to 6999) *)
    (* landy: Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars. *)

    let line = input_line stdin in
    let landx, landy = Scanf.sscanf line "%d %d" (fun landx landy -> (landx, landy)) in
    ();
done;


(* game loop *)
while true do
    (* hspeed: the horizontal speed (in m/s), can be negative. *)
    (* vspeed: the vertical speed (in m/s), can be negative. *)
    (* fuel: the quantity of remaining fuel in liters. *)
    (* rotate: the rotation angle in degrees (-90 to 90). *)
    (* power: the thrust power (0 to 4). *)

    let line = input_line stdin in
    let x, y, hspeed, vspeed, fuel, rotate, power = Scanf.sscanf line "%d %d %d %d %d %d %d" (fun x y hspeed vspeed fuel rotate power -> (x, y, hspeed, vspeed, fuel, rotate, power)) in
    
    (* Write an action using print_endline *)
    (* To debug: prerr_endline "Debug message"; *)
    if vspeed > -40
            then print_endline "0 2"
            else print_endline "0 4";
    ();
done;
