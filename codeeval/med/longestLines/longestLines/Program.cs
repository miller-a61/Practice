using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class longestLines
{
    static void Main(string[] args)
    {
        List<string> fileLines = new List<string>();

        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            int numResults;
            int i;

            while ((line = sr.ReadLine()) != null)
            {
                fileLines.Add(line);
            }

            numResults = int.Parse(fileLines[0]);

            fileLines.RemoveAt(0);

            var fileSorted = from l in fileLines
                             orderby l.Length descending
                             select l;

            for(i = 0; i < numResults; i++)
            {
                Console.WriteLine(fileSorted.ElementAt(i));
            }
            
        }
    }
}

/*
 * LONGEST LINES
CHALLENGE DESCRIPTION:


Write a program which reads a file and prints to stdout the specified number 
of the longest lines that are sorted based on their length in descending order.

INPUT SAMPLE:

Your program should accept a path to a file as its first argument. 
The file contains multiple lines. The first line indicates the number of 
lines you should output, the other lines are of different length and are presented randomly. 
You may assume that the input file is formatted correctly and the number 
in the first line is a valid positive integer.

For example:
2
Hello World
CodeEval
Quick Fox
A
San Francisco
OUTPUT SAMPLE:

Print out the longest lines limited by specified number and sorted by their length in descending order.

For example:
San Francisco
Hello World

    */
