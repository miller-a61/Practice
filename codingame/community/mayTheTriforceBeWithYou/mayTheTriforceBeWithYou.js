var n = parseInt(readline());

for (var i = 0; i < n; i++) {
    var spaces = " ".repeat(2 * n - i - 1);
    var stars = "*".repeat(2 * i + 1);
 
    if (i == 0) {
        spaces = "." + " ".repeat(2 * n - i - 2);
    }
    
    print(spaces + stars);   
}

for (var j = 0; j < n; j++) {
    var spaces1 = " ".repeat(n - j - 1);
    var spaces2 = " ".repeat((2*n) - (2*j) - 1);
    var stars = "*".repeat(2*j+1);
    print(spaces1 + stars + spaces2 + stars);
    
}
