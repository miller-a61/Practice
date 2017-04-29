using System;
using System.IO;
class program
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] digits = line.Split(',');
                int dividend = Int32.Parse(digits[0]);
                int divisor = Int32.Parse(digits[1]);

                double quotient = dividend / divisor;

                quotient = Math.Floor(quotient);
                int intquotient = Convert.ToInt32(quotient);

                int remainder = dividend - (divisor * intquotient);

                Console.WriteLine(remainder);
            }
        }
        Console.Read();
    }
}


/*N MOD M
CHALLENGE DESCRIPTION:


Given two integers N and M, calculate N Mod M (without using any inbuilt modulus operator).

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.

20,6
2,3
You may assume M will never be zero.

OUTPUT SAMPLE:

Print out the value of N Mod M
*/
