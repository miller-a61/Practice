var horses = []

var N = parseInt(readline());
for (var i = 0; i < N; i++) {
    var pi = parseInt(readline());
    horses.push(pi);
}

horses.sort((a, b) => a - b);
var answer = 10000001;

for (var i = 0; i < horses.length; i ++) {
    //print(horses[i]);
    var dist = Math.abs(horses[i + 1] - horses[i]);
    if (dist < answer) {
        answer = dist;
    }
}
print(answer);
