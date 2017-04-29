/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

var N = parseInt(readline());
var fastest = 86400;
var output;

for (var i = 0; i < N; i++) {
    var t = readline();
    
    //print(t)
    //print (t.substring(3,5));
    
    var ttime = parseInt(t.substring(0,2)) *3600 + parseInt(t.substring(3,5)) * 60 + parseInt(t.substring(6,8));
    //print(ttime);
    if (ttime < fastest) {
        fastest = ttime;
        output = t;
    }
}

// Write an action using print()
// To debug: printErr('Debug messages...');

print(output);


