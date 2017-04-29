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
        long x = long.Parse(Console.ReadLine());

        long y = x/2;
        long sum = y;
        
        for (long i = 1; i <= y; i++) {
            sum += y/i*(1+x/i);
            if (x/i%2==1 )
                sum += 1+y/i;
        }
        // Write an action using Console.WriteLine()
        // To debug: Console.Error.WriteLine("Debug messages...");

        Console.WriteLine(sum);
    }
}
/*
x=gets.to_i
y=x/2
z=y
for i in 1..y
    z+=y/i*(1+x/i)
    x/i%2==1&&z+=1+y/i  
end
p z
*/