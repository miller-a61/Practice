package main
import "fmt"
func main() {
    var N int
    fmt.Scan(&N)
    
    if (N > 1) {
        N = N*6*(N-2)+8;
    }
    
    // fmt.Fprintln(os.Stderr, "Debug messages...")
    fmt.Println(N)// Write answer to stdout
}