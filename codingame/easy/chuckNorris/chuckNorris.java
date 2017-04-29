import java.util.*;
import java.io.*;
import java.math.*;

class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        String MESSAGE = in.nextLine();

        String answer = "";
        String bin = "";
        String binBin = "";
        char prevChar = '2';
            
        for(char c : MESSAGE.toCharArray()) {
         
            int temp = c;

            bin  = Integer.toString(temp, 2);
                
            if (bin.length() == 6)
                bin = '0' + bin;
            
            binBin += bin;
        }
        
        for(char b : binBin.toCharArray()) {
        
            if(b == prevChar)
                answer += "0";
            else
                answer += (b == '1') ? " 0 0" : " 00 0";
            
            prevChar = b;    
            
        }
        
        answer = answer.trim();
        
        System.out.println(answer);
    }
}


