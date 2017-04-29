import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let inputs = (readLine()!).characters.split{$0 == " "}.map(String.init)
let n = Int(inputs[0])!
let s = Int(inputs[1])!
let d = readLine()!
//print ("n: \(n)")
var x = 2
var answer = 0

while x * 2 < n {
    x = x * 2
}
//print("x:\(x)")

if (d == "LEFT") {
    answer = s + (2 * (n - x)) 
} else {
    answer = s - (2 * (n - x ))
}

if (answer < 0) {
    answer = answer + n
}

if (answer > n) {
    answer = answer - n
}
print("\(answer)")

