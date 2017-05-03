var inputs = readline().split(' ');
var n = parseInt(inputs[0]);
var s = parseInt(inputs[1]);
var d = readline();

var x = 2;
while (x * 2 < n) {
    x *= 2;
}

if (d == "LEFT") {
    answer = s + (2 * (n - x));
}else{
    answer = s - (2 * (n - x));
}

if (answer < 0) {
    answer += n;
}

if (answer > n) {
    answer -= n;
}

print(answer);
