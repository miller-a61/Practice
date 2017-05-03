var lvl = parseInt(readline());
var needed = parseInt(readline());
var xp = parseInt(readline());

xp *= 300;

while (xp >= needed) {
    lvl += 1;
    xp -= needed;
    needed = Math.floor((lvl * Math.sqrt(lvl) * 10));
}

var final = needed - xp;


print(lvl);
print(final);