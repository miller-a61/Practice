input = new Scanner(System.in);

x = input.nextLong()
y = (long)(x/2)
z = y

    
for (i = 1; i <= y; i++) {
    a = (long)(y/i)
    b = (long)(x/i)
    
    z += a * (1+ b)
    if ( b %2==1 ) {
	    z += 1+ a;
    }
}

println(z);


