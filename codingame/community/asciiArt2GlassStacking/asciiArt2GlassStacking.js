var n = parseInt(readline());

var sum = 0;
var rows = 0;

for (var i = 1; i <= n; i++) {
    sum += i
    if (sum <= n) {
        rows = i;
    }
}

for (var j = 1; j <= rows; j++) {
    var offset1 = (rows - j) * 3 ;
    if (offset1 < 0) {
        offset1 = 0;
    }
    var offset2 = (rows - j) * 3;
    var toPrint = (" ".repeat(offset1) + "  *** ".repeat(j) + " ".repeat(offset2) );   
    print(toPrint.substring(1)); 
    toPrint = (" ".repeat(offset1) + "  * * ".repeat(j) + " ".repeat(offset2) );   
    print(toPrint.substring(1));     
    toPrint = (" ".repeat(offset1) + "  * * ".repeat(j) + " ".repeat(offset2) );   
    print(toPrint.substring(1));     
    toPrint = (" ".repeat(offset1) + " *****".repeat(j) + " ".repeat(offset2) );       
    print(toPrint.substring(1));     
}