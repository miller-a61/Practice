input = new Scanner(System.in);

N = input.nextInt()

for (i = 0; i < N; i++) {
    answer = ""
    //println N
    //println i
    if (i == 0){
        answer = "." + " " * ( 2 * N - i - 2)
    } else {
        answer = " " * ( 2 * N - i - 1)
    }
    answer += "*" * (2 * i + 1)

    println answer
    
}

for (i = 0; i < N; i++) {
    answer = ""
    //println N
    //println i
    if (i == 0){
        answer = " " * ( N - i - 1)
    } else {
        answer = " " * ( N - i - 1)
    }
    answer += "*" * (2 * i + 1)

    numspaces = (2 * N) - (2 * i) - 1
    answer += " " * numspaces
    answer += "*" * (2 * i + 1)
    
    println answer
    
}