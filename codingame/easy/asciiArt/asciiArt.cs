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
        int L = int.Parse(Console.ReadLine());
        int H = int.Parse(Console.ReadLine());
        string T = Console.ReadLine();
        Console.Error.WriteLine("word: {0}", T);
        int wordLength = T.Length;
        string[] alphabet = new string[H];  
        int ascii, letter;
        string answer = "";
        
        for (int i = 0; i < H; i++)
        {
            string ROW = Console.ReadLine();
            alphabet[i] = ROW;
        }

        for(int j = 0; j < H; j++) {
            for(int k = 0; k < wordLength; k++) {
                
                ascii = Convert.ToByte(T[k]);
                
                if (ascii > 92)
                    ascii -= 32;
                    
                if ((ascii < 65) || (ascii > 90))
                    ascii = 91;
                
                letter = (ascii - 65) * L;
                
                answer += alphabet[j].Substring(letter, L);
                
                Console.Error.WriteLine(letter);           
                
            }
            
            answer += '\n';     
            
        }

        Console.WriteLine(answer);
    }
}