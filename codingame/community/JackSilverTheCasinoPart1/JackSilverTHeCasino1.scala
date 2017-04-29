import math._
import scala.util._
object Solution extends App {
    val rnds = readInt
    var cash = readDouble
    for(i <- 0 until rnds) {
        val play = readLine
    
        var plays = play.split(" ");    
        var bet:Double = ceil(cash/4);
        cash = cash - bet;
        var ball:Int = plays(0).toInt;
        var call = plays(1);
        var target:Int = -1;
        if (call == "PLAIN" ) {
            target = plays(2).toInt;
        }   
        
        if (call == "PLAIN" && ball == target) {
            cash = cash + (bet * 36);
        }else if (call == "EVEN" && ball > 0 && ball % 2 == 0) {
            cash = cash + (bet * 2);
        }else if (call == "ODD" && ball % 2 == 1) {
            cash = cash + (bet * 2);
        }
    }
    println(cash.toInt)
}
