import math._
import scala.util._
object Solution extends App {
    var lvl:Double = readDouble
    var needed:Double = readDouble
    var xp:Double = readDouble
    xp = xp * 300;
    
    while (xp >= needed) {
        lvl = lvl + 1;
        xp = xp - needed;
        needed = floor(lvl  * 10 * sqrt(lvl));
    }
    var need:Double = needed - xp;
    println(lvl.toInt);
    println(need.toInt);
}