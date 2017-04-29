let n = int_of_string (input_line stdin) in
let m = n * 6 * (n - 2) + 8 in
if n > 1
    then Printf.printf "%d" m
    else Printf.printf "%d" n;