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

                if (line != "")
                {
                    int number = Int32.Parse(line);

                    string outstring = Convert.ToString(number, 2);

                    Console.WriteLine(outstring);
                }
            }
        }

        Console.Read();
    }
}




/*DECIMAL TO BINARY
CHALLENGE DESCRIPTION:


You are given a decimal (base 10) number, print its binary representation.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename containing decimal numbers greater or equal to 0, one per line.

Ignore all empty lines.

For example:



1
2
3
2
10
67
OUTPUT SAMPLE:

Print the binary representation, one per line.

For example:



1
2
3
10
1010
1000011

SUBMIT SOLUTION
*/
