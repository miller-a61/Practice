import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let x = Int(readLine()!)!
var y = x/2
var z = y
var i = 1

for i in 1...y {
    z = z + y/i * (1 + x/i)
    if (x/i % 2 == 1) {
        z = z + 1 + y/i
    }
}
print("\(z)")


