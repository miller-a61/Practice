import java.util.*;
import java.io.*;
import java.math.*;

class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        String SLON = in.next();
        String SLAT = in.next();
        
        SLON = SLON.replace(',','.');
        SLAT = SLAT.replace(',','.');
        
        float LON = Float.parseFloat(SLON);
        float LAT = Float.parseFloat(SLAT);

        int N = in.nextInt();
        String[] defib = new String[N];
        double priorDistance = 99;
        String[] currentDefib = new String[6];
        String answer = "";
        
        if (in.hasNextLine()) {
            in.nextLine();
        }
        for (int i = 0; i < N; i++) {
            String DEFIB = in.nextLine();
            defib[i] = DEFIB;
        }

///////////////////////////////////////////////


        for(String fib : defib) {
         
            currentDefib = fib.split(";");
            
            String name = currentDefib[1];
            float defib_lon = Float.parseFloat(currentDefib[4].replace(',','.'));
            float defib_lat = Float.parseFloat(currentDefib[5].replace(',','.'));
            
            float x = defib_lon - LON;
            float y = defib_lat - LAT;
            
            double x2 = Math.pow(x,2.0);
            double y2 = Math.pow(y,2.0);
            double dist = Math.sqrt(x2 + y2);

            answer = (dist < priorDistance) ? name : answer;
            
            priorDistance = (dist < priorDistance) ? dist : priorDistance;
        
        }


///////////////////////////////////////////////

        System.out.println(answer);
    }
}




