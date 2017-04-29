input = new Scanner(System.in);


N = input.nextInt()
fastest = 99999
answer = ""

for (i = 0; i < N; ++i) {
    t = input.next()
    time = (Integer.parseInt(t.substring(0,2)) * 3600 
            + Integer.parseInt(t.substring(3,5)) * 60
            + Integer.parseInt(t.substring(6,8)) )
    
    if (time < fastest) {
        fastest = time
        answer = t
    }        

}

println answer
