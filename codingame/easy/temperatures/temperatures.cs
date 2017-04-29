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
        int n = int.Parse(Console.ReadLine()); // the number of temperatures to analyse
        string get_temp = Console.ReadLine();
        string[] str_temps = get_temp.Split(' '); // the n temperatures expressed as integers ranging from -273 to 5526
        int closest;
        int tst;
        
        Console.Error.WriteLine(get_temp.Length);
        
        int[] temps;
        
        if (get_temp.Length > 0) {
             temps = Array.ConvertAll<string, int>(str_temps, int.Parse);
            closest = temps[0];  
            for(int i = 1; i <= temps.Length -1; i++)
            {
               Console.Error.WriteLine(temps[i]);
               tst = temps[i];
               if (Math.Abs(closest) == Math.Abs(tst) && closest < 0)
                    closest = temps[i];
                else if (Math.Abs(closest) > Math.Abs(tst))
                    closest = temps[i];
               }
        }
        else
            closest = 0;
        
        // Write an action using Console.WriteLine()
        // To debug: Console.Error.WriteLine("Debug messages...");
        //if


        Console.WriteLine("{0}",closest);
    }
}