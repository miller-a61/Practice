import java.util.*;
import java.io.*;
import java.math.*;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        long x = in.nextInt();
        long y = x/2;
        long sum = y;
        
        for (long i = 1; i <= y; i++) {
            sum += y/i*(1+x/i);
            if (x/i%2 == 1)
                sum += 1+y/i;
        }


        System.out.println(sum);
    }
}