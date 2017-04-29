import math._
import scala.util._
object Solution extends App {
    var n = readInt
    if (n > 1)
        n = n * 6 * (n - 2) + 8;
    println(n)
}