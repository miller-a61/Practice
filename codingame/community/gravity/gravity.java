import java.util.*;
import java.io.*;
import java.math.*;

class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int width = in.nextInt();
        int height = in.nextInt();
        String[] grid = new String[height];
        int[] col = new int[width];
        String row = "";
        int curHeight = height;
    
        for (int i = 0; i < height; i++) {
            String line = in.next();
            grid[i] = line;
        }

        for (int k = 0; k < width; k++) {
            col[k] = 0;
        }
        
        for (int b = 0; b < height; b++) {
           for (int c = 0; c < width; c++) {
               //System.err.println(b);
               //System.err.println(c);
               System.err.println(grid[b].substring(c,c+1));
               //System.err.println("_________");
               
               //char x = grid[b].substring(c, c+1);
               
                if (grid[b].substring(c, c+1).equals("#")) {
                    col[c]++;
                    System.err.println("inside if");
                }
            }
        }
        
        for(int m = 1; m <= height; m++) {
            row = "";
            
            for(int n = 0; n < width; n++) {
            
            //System.err.println(col[n]);
            //System.err.println(curHeight);
            if (col[n] >= curHeight)
                row += "#";
            else
                row += ".";
            }
            
            System.out.println(row);
            curHeight--;
        }        
    }
}
/*

for m in 1..@height do
   row = ""
   
   for n in 0..@width - 1 do
        if col[n] >= curHeight
            row += "#"
        else
            row += "."
        end
       
   end
    puts row
    curHeight -= 1
end
*/