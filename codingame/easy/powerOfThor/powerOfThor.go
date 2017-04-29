package main
import "fmt"

func main() {

    var lightX, lightY, initialTX, initialTY int
    fmt.Scan(&lightX, &lightY, &initialTX, &initialTY)
    var ns, ew string
    
    for {

        var remainingTurns int
        fmt.Scan(&remainingTurns)
        
        if initialTX < lightX {
            ew = "E"
            initialTX++
        } else if initialTX > lightX {
            ew = "W"
            initialTX--
        } else {
            ew = ""
        }
        
        if initialTY < lightY {
            ns = "S"
            initialTY++
        } else if initialTY > lightY {
            ns = "N"
            initialTY--
        } else {
            ns = ""
        }
        
        fmt.Println(ns + ew)
    }
}