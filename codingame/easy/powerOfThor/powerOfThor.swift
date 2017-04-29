import Glibc

public struct StderrOutputStream: OutputStreamType {
    public mutating func write(string: String) { fputs(string, stderr) }
}
public var errStream = StderrOutputStream()

let inputs = (readLine()!).characters.split{$0 == " "}.map(String.init)
let lightX = Int(inputs[0])! // the X position of the light of power
let lightY = Int(inputs[1])! // the Y position of the light of power
var initialTX = Int(inputs[2])! // Thor's starting X position
var initialTY = Int(inputs[3])! // Thor's starting Y position
var ew = ""
var ns = ""
// game loop
while true {
    let T = Int(readLine()!)! // The remaining amount of turns Thor can move. Do not remove this line.
    if (initialTX > lightX && initialTY > lightY) {
        print("NE")
        initialTX = initialTX + 1
        initialTY = initialTY - 1
    }else if (initialTX > lightX && initialTY < lightY){
        print("SW")
        initialTX = initialTX - 1
        initialTY = initialTY + 1
        debugPrint("tx: \(initialTX) ty: \(initialTY)", toStream: &errStream)
    }else if (initialTX < lightX && initialTY < lightY){
        print("SE")
        initialTX = initialTX + 1
        initialTY = initialTY + 1
    }else if (initialTX < lightX && initialTY > lightY){
        print("NW")
        initialTX = initialTX - 1
        initialTY = initialTY - 1
    }else if (initialTX < lightX && initialTY == lightY){
        print("E")
        initialTX = initialTX + 1
    }else if (initialTX == lightX && initialTY < lightY){
        print("S")
        initialTY = initialTY + 1
    }else if (initialTX > lightX && initialTY == lightY){
        print("W")
        initialTX = initialTX - 1
    }else if (initialTX == lightX && initialTY > lightY){
        print("N")
        initialTY = initialTY - 1
    }
}

