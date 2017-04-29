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
        int N = int.Parse(Console.ReadLine());
        int seconds = 86400;
        string answer = "";
        int hour, min, sec, time;
        
        for (int i = 0; i < N; i++)
        {
            string t = Console.ReadLine();
            
            hour = Convert.ToInt32(t.Substring(0,2)) * 3600;
            
            min =  Convert.ToInt32(t.Substring(3,2)) * 60;
            
            sec = Convert.ToInt32(t.Substring(6,2));
            
            time = hour + min + sec;
            
            if (time < seconds) {
                answer = t;
                seconds = time;
                }
            //Console.Error.WriteLine(time);
            
        }

        // Write an action using Console.WriteLine()
        // To debug: Console.Error.WriteLine("Debug messages...");

        Console.WriteLine(answer);
    }
}