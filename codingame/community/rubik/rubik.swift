import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let N = Int(readLine()!)!

let M = N * 6 * (N - 2) + 8

if (N > 1)
    {print("\(M)");}
    else{print("\(N)");}
