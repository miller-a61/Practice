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

                string outString = Convert.ToString(digits[0]);

                for(int i = 1; i < digits.Length; i++)
                {
                    if(digits[i-1] != digits[i])
                    {
                        outString = outString + "," + Convert.ToString(digits[i]);
                    }
                }

                Console.WriteLine(outString);
            }
        }
        Console.Read();
    }
}



/*
 * UNIQUE ELEMENTS
CHALLENGE DESCRIPTION:


You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.

INPUT SAMPLE:

File containing a list of sorted integers, comma delimited, one per line. E.g. 


1
2
1,1,1,2,2,3,3,4,4
2,3,4,5,5
OUTPUT SAMPLE:

Print out the sorted list with duplicates removed, one per line. 
E.g.



1
2
1,2,3,4
2,3,4,5

 */
