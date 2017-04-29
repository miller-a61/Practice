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
        int N = in.nextInt();
        int seconds = 86400;
        String answer = "";
        int hour, min, sec, time;
        
        for (int i = 0; i < N; i++) {
            String t = in.next();
            
            hour = Integer.parseInt(t.substring(0,2)) * 3600;
            
            min =  Integer.parseInt(t.substring(3,5)) * 60;
            
            sec = Integer.parseInt(t.substring(6,8));
            
            time = hour + min + sec;
            
            if (time < seconds) {
                answer = t;
                seconds = time;
                }            
            
            
        }

        // Write an action using System.out.println()
        // To debug: System.err.println("Debug messages...");

        System.out.println(answer);
    }
}

            
