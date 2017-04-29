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
        int[] horses = new int[N];
        int answer = 10000000;
        for (int i = 0; i < N; i++)
        {
            int pi = int.Parse(Console.ReadLine());
            horses[i] = pi;
        }

        Array.Sort(horses);
        
        for(int i = 0; i < horses.Length - 1; i++) {
            int curDist = Math.Abs(horses[i] - horses[i + 1]);
            
            Console.Error.WriteLine("cur: {0}, ans: {1}",curDist, answer);
            
            if(curDist < answer)
                answer = curDist;
            
        }
        // Write an action using Console.WriteLine()
        // To debug: Console.Error.WriteLine("Debug messages...");

        Console.WriteLine(answer);
    }
}