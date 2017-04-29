import java.util.*;
import java.io.*;
import java.math.*;

class Player {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int lightX = in.nextInt(); // the X position of the light of power
        int lightY = in.nextInt(); // the Y position of the light of power
        int initialTX = in.nextInt(); // Thor's starting X position
        int initialTY = in.nextInt(); // Thor's starting Y position
        String ew, ns;
        
        // game loop
        while (true) {
            int remainingTurns = in.nextInt(); // The remaining amount of turns Thor can move. Do not remove this line.

            if (initialTX < lightX) {
                ew = "E";
                initialTX++;
            }else if (initialTX > lightX) {
                ew = "W";
                initialTX--;
            }else ew = "";
            
            if (initialTY < lightY) {
                ns = "S";
                initialTY++;
            }else if (initialTY > lightY) {
                ns = "N";
                initialTY--;
            }else ns = "";
            
            //Console.WriteLine("{0}{1}", ns, ew);

            // A single line providing the move to be made: N NE E SE S SW W or NW
            System.out.println(ns+ew);
        }
    }
}
