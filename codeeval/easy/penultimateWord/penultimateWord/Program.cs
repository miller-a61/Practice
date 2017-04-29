using System;
using System.IO;
class Program
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            int i;
            while ((line = sr.ReadLine()) != null)
            {
                string[] words = line.Split(' ');
                i = words.Length - 2;
                Console.WriteLine(words[i]);
            }
        }
    }
}


/*PENULTIMATE WORD
CHALLENGE DESCRIPTION:


Write a program which finds the next-to-last word in a string.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following

some line with text
another line
Each line has more than one word.

OUTPUT SAMPLE:

Print the next-to-last word in the following way.

with
another

    */
