using System;
using System.Collections.Generic;
using System.IO;
class Program
{
    static void Main(string[] args)
    {
        List<string> fileLines = new List<string>();

       using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            string binary;
            int num;

            while ((line = sr.ReadLine()) != null)
            {
                fileLines.Add(line);
            }

            fileLines.ForEach(delegate(String row)
                {
                    num = int.Parse(row);
                    binary = Convert.ToString(num, 2);

                    binary = binary.Replace("0", "");

                    Console.WriteLine(binary.Length);

                });

        }
        Console.Read();
    }
}


/*
 * NUMBER OF ONES
CHALLENGE DESCRIPTION:


Write a program which determines the number of 1 bits in the internal 
representation of a given integer.

INPUT SAMPLE:

The first argument is a path to a file. The file contains integers, one per line.

For example:
10
22
56

    OUTPUT SAMPLE:

Print to stdout the number of ones in the binary form of each number.

For example:
2
3
3

    */