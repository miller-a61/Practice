import java.util.*;
import java.io.*;
import java.math.*;

class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int L = in.nextInt();
        int H = in.nextInt();
        if (in.hasNextLine()) {
            in.nextLine();
        }
        String T = in.nextLine();
        int wordLength = T.length();
        String[] alphabet = new String[H];
        int letter;
        String answer = "";
        
        
        for (int i = 0; i < H; i++) {
            String ROW = in.nextLine();
            alphabet[i] = ROW;
        }

////////////////////////////////////////////
        
        for(int j = 0; j < H; j++) {
            //for(int k = 0; k < wordLength; k++) {
            for (int k = 0; k < wordLength; k++)  {  

                int ascii = T.toCharArray()[k];
                
                //System.out.println(ascii);
                if (ascii > 92)
                    ascii -= 32;
                    
                if ((ascii < 65) || (ascii > 90))
                    ascii = 91;
                
                letter = (ascii - 65) * L;
                
                String temp = alphabet[j];
                
                //System.out.println(temp);
                
                //System.out.println(letter);
                
                //System.out.println(L);
                
                answer += temp.substring(letter, letter + L);       
                
            }
            
            answer += '\n';     
            
        }

////////////////////////////////////////////

        System.out.println(answer);
    }
}


