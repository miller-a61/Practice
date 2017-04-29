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
                string[] letters = line.Split(',');

                int x = Int32.Parse(letters[0]);
                int n = Int32.Parse(letters[1]);
                int answer = 0;
                int multiplier = 1;

                while (answer < x)
                {
                    answer = n * multiplier;
                    multiplier++;
                }

                Console.WriteLine(answer);
            }
        }
        Console.Read();
    }
}

/*MULTIPLES OF A NUMBER
CHALLENGE DESCRIPTION:


Given numbers x and n, where n is a power of 2, print out the smallest multiple of n which is greater than or equal to x. Do not use division or modulo operator.

INPUT SAMPLE:

The first argument will be a path to a filename containing a comma separated list of two integers, one list per line. E.g.

13,8
17,16
OUTPUT SAMPLE:

Print to stdout, the smallest multiple of n which is greater than or equal to x, one per line. E.g.

16
32*/

