/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

var x = parseInt(readline());
var y = x/2;
var sum = y;

for (var i = 1; i <= y; i++) {
    sum += Math.floor(y/i) *(1+ Math.floor(x/i));
    if (Math.floor(x/i)%2==1 ) {
        sum += 1+ Math.floor(y/i);
        }
}
print(sum);