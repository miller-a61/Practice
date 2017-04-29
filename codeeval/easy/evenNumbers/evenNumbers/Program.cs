using System.IO;
using System;
class program
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                int num = Int32.Parse(line);

                int mod = num % 2;

                if (mod == 1)
                { mod = 0; }
                else { mod = 1; }

                Console.WriteLine(mod);
            }
        }
    }
}



/*EVEN NUMBERS
CHALLENGE DESCRIPTION:


Write a program which checks input numbers and determines whether a number is even or not.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following



1
2
3
701
4123
2936
OUTPUT SAMPLE:

Print 1 if the number is even or 0 if the number is odd.



1
2
3
0
0
1
All numbers in input are integers > 0 and < 5000.

    */
     