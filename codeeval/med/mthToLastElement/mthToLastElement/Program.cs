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
                string[] items = line.Split(' ');

                string shift = items[items.Length - 1];

                int num = Int32.Parse(shift);

                if(num < items.Length)
                {
                    int len = items.Length - 1 - num;

                    Console.WriteLine(items[items.Length - 1 - num]);
                }


            }
        }

        //Console.Read();
    }
}

/*
 * 
 * MTH TO LAST ELEMENT
SPONSORING COMPANY:

  

CHALLENGE DESCRIPTION:


Write a program which determines the Mth to the last element in a list.

INPUT SAMPLE:

The first argument is a path to a file. The file contains the series of space delimited characters followed by an integer. The integer represents an index in the list (1-based), one per line.

For example:



1
2
a b c d 4
e f g h 2
OUTPUT SAMPLE:

Print to stdout the Mth element from the end of the list, one per line. If the index is larger than the number of elements in the list, ignore that input.

For example:



1
2
a
g
SUBMIT SOLUTION
*/
 