using System;
using System.IO;
class bitPositions
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] items = line.Split(',');

                int num = Int32.Parse(items[0]);
                int x = Int32.Parse(items[1]);
                int y = Int32.Parse(items[2]);

                string test = Convert.ToString(num, 2);

                int length = test.Length;

                int firstPosition = length - x;
                int secondPosition = length - y;

                string firstBit = test.Substring(firstPosition, 1);
                string secondBit = test.Substring(secondPosition, 1);

                string same = "false";

                if (firstBit == secondBit)
                {
                    same = "true";
                };

                Console.WriteLine(same);

            }
        }

        Console.Read();
    }
}

/*
 * BIT POSITIONS
CHALLENGE DESCRIPTION:


Given a number n and two integers p1,p2 determine if the bits in position p1 and p2 are the same or not. Positions p1 and p2 are 1 based.

INPUT SAMPLE:

The first argument will be a path to a filename containing a comma separated list of 3 integers, one list per line. E.g.

86,2,3
125,1,2
OUTPUT SAMPLE:

Print to stdout, 'true'(lowercase) if the bits are the same, else 'false'(lowercase). E.g.

true
false

SUBMIT SOLUTION

    */