
var inputs = readline().split(' ');
var lightX = parseInt(inputs[0]); // the X position of the light of power
var lightY = parseInt(inputs[1]); // the Y position of the light of power
var initialTX = parseInt(inputs[2]); // Thor's starting X position
var initialTY = parseInt(inputs[3]); // Thor's starting Y position

var ew;
var ns;

// game loop
while (true) {
    var remainingTurns = parseInt(readline()); // The remaining amount of turns Thor can move. Do not remove this line.

    if (initialTX < lightX) {
        ew = "E";
        initialTX++;
    } else if (initialTX > lightX) {
        ew = "W"
        initialTX--;
    } else 
        ew = "";
    
    if (initialTY < lightY) {
        ns = "S";
        initialTY++;
    } else if (initialTY > lightY) {
        ns = "N"
        initialTY--;
    } else 
        ns = "";
        
    print(ns + ew);
}