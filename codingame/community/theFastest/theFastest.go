package main
import "fmt"
import "strconv"

func main() {
    var N int
    fmt.Scan(&N)
    var fastest int64 = 86400
    var output string
    
    for i := 0; i < N; i++ {
        var t string
        fmt.Scan(&t)
        
        hr :=  t[0:2] 
        min := t[3:5]
        sec := t[6:8]
        
        hour, _ := strconv.ParseInt(hr, 10, 0)
        mins, _ := strconv.ParseInt(min, 10, 0)
        secs, _ := strconv.ParseInt(sec, 10, 0)
        
        time := hour * 3600 + mins * 60 + secs
        
        if time < fastest {
            fastest = time
            //var output string
            output = t
            //fmt.Println(output)
        }
    }
    
    fmt.Println(output)// Write answer to stdout
}