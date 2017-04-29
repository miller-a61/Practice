input = new Scanner(System.in);

lightX = input.nextInt() // the X position of the light of power
lightY = input.nextInt() // the Y position of the light of power
initialTX = input.nextInt() // Thor's starting X position
initialTY = input.nextInt() // Thor's starting Y position

// game loop
while (true) {
    remainingTurns = input.nextInt() // The remaining amount of turns Thor can move. Do not remove this line.
    
    if (initialTX < lightX){
        ew = "E"
        initialTX++
    } else if (initialTX > lightX) {
        ew = "W"
        initialTX--
    } else {
        ew = ""
    }

    if (initialTY < lightY){
        ns = "S"
        initialTY++
    } else if (initialTY > lightY) {
        ns = "N"
        initialTY--
    } else {
        ns = ""
    }
    
    ans = ns.concat(ew)
    println ans
    //println ew
}