package main

import "fmt"
//import "os"

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

func main() {
    var x int
    fmt.Scan(&x)
    var y int = x/2
    var z int = y
    for i := 1; i <= y; i++ {
        z += y/i * (1+ x/i)
        if (x/i % 2 == 1) {
            z += 1 + y/i
        }
        //fmt.Println (i)
    }
    
    // fmt.Fprintln(os.Stderr, "Debug messages...")
    fmt.Println(z) 
}
