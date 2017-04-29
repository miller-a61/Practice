

var n = parseInt(readline()); // the number of temperatures to analyse
var temps = readline(); // the n temperatures expressed as integers ranging from -273 to 5526

var temp = temps.split(" ");
var closest = 5527;

for (i = 0; i < temp.length; i++) {
   var a = parseInt(temp[i])
   if (Math.abs(closest) == Math.abs(temp[i]) && closest < 0) {
       closest = temp[i];
   } else if (Math.abs(closest) > Math.abs(temp[i])) {
       closest = temp[i];
   }
}

if (temps.length == 0) {
    closest = 0;
}

print(closest);