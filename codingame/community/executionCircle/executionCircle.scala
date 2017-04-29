import math._
import scala.util._
object Solution extends App {
    val Array(n, s) = for(i <- readLine split " ") yield i.toLong
    val d = readLine
    var x:BigInt = 2;
    var answer:BigInt = 0;
    
    while (x * 2 < n) {
        x = x * 2;
    }

    if (d == "LEFT") {
        answer = s + (2 * (n - x));
    } else {
        answer = s - (2 * (n - x));
    }
    if (answer < 0) {
        answer = answer + n;
    }
    if (answer > n) {
        answer = answer - n;
    }
    println(answer)
}