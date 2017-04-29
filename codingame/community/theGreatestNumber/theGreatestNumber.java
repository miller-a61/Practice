import java.util.*;
import java.io.*;
import java.math.*;
import java.util.Arrays;
/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
class Solution {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int N = in.nextInt();
        if (in.hasNextLine()) {
            in.nextLine();
        }
        String input = in.nextLine();
        System.err.println(input);

        int zeros = 0;
        boolean neg = false;
        boolean dec = false;
        String zero = "";
        
        for (int i = 0; i < input.length(); i++) {
            if (input.substring(i, i + 1).equals("0"))
                zeros++;
                //System.err.println(zeros);
        }
        
        if (zeros > 0) {
            //System.err.println("in zero if");
            for(int z = 1; z <= zeros; z++) {
                String addZero = "0";
                //System.err.println(zero);
                zero = zero.concat(addZero);   
            }
        }
        //System.err.println("$$$$");
        //System.err.println(zeros);
        //System.err.println(zero);
        //System.err.println("$$$$");
        
        input = input.replace("0","").replace(" ","");
        System.err.println(input);
         
        if (input.indexOf("-") != -1) {
            neg = true;
            input = input.replace("-","");
        }
        System.err.println(input);
 
        if (input.indexOf(".") != -1) {
            dec = true;
            input = input.replace(".","");
        }
        System.err.println(input);   
        
        String[] digits = input.split("");
        String temp = "";
        
        if (neg == true) {
            for (int i = 0;  i < digits.length - 1;  i++ )
                {
                    for (int j = i + 1;  j < digits.length;  j++ )
                    {  
                             if ( digits [ i ].compareToIgnoreCase( digits [ j ] ) > 0 )
                              {                                             // ascending sort
                                          temp = digits [ i ];
                                          digits [ i ] = digits [ j ];    // swapping
                                          digits [ j ] = temp; 
                                          
                               } 
                       } 
                }
        }
        else  {
            for (int i = 0;  i < digits.length - 1;  i++ )
            {
                for (int j = i + 1;  j < digits.length;  j++ )
                {  
                         if ( digits [ i ].compareToIgnoreCase( digits [ j ] ) < 0 )
                          {                                             // ascending sort
                                      temp = digits [ i ];
                                      digits [ i ] = digits [ j ];    // swapping
                                      digits [ j ] = temp; 
                                      
                           } 
                   } 
            }
        }
        
        input = Arrays.toString(digits);
        
        input = input.replace("[","").replace("]","").replace(",","").replace(" ","");
               
        System.err.println("------");
        System.err.println(input); 
        System.err.println(input.length());
        System.err.println("------");
        if (input.length() == 0) {
            System.out.println("0");
        } else if (dec == false) {
            System.out.println(neg == true ? "-" + input : input + zero);
            
        } else {
            if (neg == true) {
                input = zero + input;
                System.out.println("-" + input.substring(0,1) + "." + input.substring(1));
            } else if (zeros > 0)
                System.out.println(input + zero.substring(0, zero.length() -1));
            else
                System.out.println(input.substring(0, input.length() - 1) + "." + input.substring(input.length()- 1));
            
            
        }
        
        // Write an action using System.out.println()
        // To debug: System.err.println("Debug messages...");

        //System.out.println("greatest");
    }
}