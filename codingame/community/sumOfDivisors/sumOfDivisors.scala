import math._
import scala.util._
import BigInt._

object Solution extends App {
    val n = readInt
    var x:BigInt = n;
    var y:BigInt = x/2;
    var sum:BigInt = y;
    
    for ( i <- 1 until y) {
        sum+= y/i*(1+x/i);
        if (x/i%2==1 )
            sum+=1+y/i;    
    }
    
    sum+=3;
    println(sum)
}