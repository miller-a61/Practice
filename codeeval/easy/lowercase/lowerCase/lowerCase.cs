using System;
using System.IO;
class lowerCase
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                Console.WriteLine(line.ToLower());
            }
        }
    }
}

/*
 * LOWERCASE
CHALLENGE DESCRIPTION:


Given a string write a program to convert it into lowercase.

INPUT SAMPLE:

The first argument will be a path to a filename containing sentences, one per line. 
You can assume all characters are from the english language. 

E.g.
HELLO CODEEVAL
This is some text

OUTPUT SAMPLE:

Print to stdout, the lowercase version of the sentence, each on a new line. 
E.g.
hello codeeval
this is some text

 */