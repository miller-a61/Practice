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
        int[] horses = new int[N];
        int answer = 100000000;
        
        for (int i = 0; i < N; i++) {
            int pi = in.nextInt();
            horses[i] = pi;
        }

        Arrays.sort(horses);
 
        for(int i = 0; i < horses.length - 1; i++) {
            int curDist = Math.abs(horses[i] - horses[i + 1]);
            
            if(curDist < answer)
                answer = curDist;
        }
        
        System.out.println(answer);
    }
}

        