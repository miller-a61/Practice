import java.util.*;
import java.io.*;
import java.math.*;

class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt(); // the number of temperatures to analyse
        
        if (in.hasNextLine()) {
            in.nextLine();
        }
        
        String line = in.nextLine();
        
        //System.out.println(line);
        
           // System.out.println(line.length());
        
        String[] stemps = line.split(" ");
        int[] temps = new int[stemps.length];
        int closest = 99999;
        int tst;        
        //System.out.println(stemps[0]);
      
        if (line.length() > 0) {
                
            for (int i = 0; i < stemps.length; i++) {
                //System.out.println(stemps[i]);
                
               temps[i] = Integer.parseInt(stemps[i]); 
            }  
            
            closest = temps[0];
     
            for(int i = 1; i <= temps.length -1; i++)
            {
               tst = temps[i];
               //System.out.println(tst);
               //System.out.println(closest);
               
               if (Math.abs(closest) == Math.abs(tst) && closest < 0)
                    closest = temps[i];
                else if (Math.abs(closest) > Math.abs(tst))
                    closest = temps[i];
               }       
            
        }

        if (closest == 99999) {
            closest = 0;   
        }
        //System.out.println("------");

        System.out.println(closest);
        //System.out.println("#######");
    }
}
