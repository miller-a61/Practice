using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
class Solution
{
    static void Main(string[] args)
    {
        string MESSAGE = Console.ReadLine();
        string answer = "";
        string bin = "";
        string binBin = "";
        char prevChar = '2';
        
        foreach(char c in MESSAGE) {
         
            int temp = Convert.ToByte(c);
            //Console.Error.WriteLine(temp);
            bin  = Convert.ToString(temp, 2);
            //Console.Error.WriteLine(bin.Length);
            
            if (bin.Length == 6)
                bin = '0' + bin;
            Console.Error.WriteLine(bin);
            
            binBin += bin;
        }
        
        foreach(char b in binBin) {
        
            Console.Error.WriteLine("b: {0}, p: {1}", b, prevChar);
            if(b.Equals(prevChar))
                answer += "0";
            else
                answer += (b == '1') ? " 0 0" : " 00 0";
            Console.Error.WriteLine(answer);
            
            prevChar = b;    
            
        }
        
        answer = answer.Trim();
        
        Console.WriteLine(answer);
    }
}