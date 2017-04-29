using System;
using System.IO;
using System.Text.RegularExpressions;

class rightmostChar
{
    //static void Main()
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                if (line.Length > 0)
                {
                    string[] split = line.Split(',');
                    string[] letters = Regex.Split(split[0], string.Empty);
                    string charpos = split[1];
                    int position = Array.LastIndexOf(letters, charpos) - 1;
                    if(position == -2)
                    {
                        position = -1;
                    }
                    Console.WriteLine(position);
                }
            }
        }
    }
}

/*
RIGHTMOST CHAR
CHALLENGE DESCRIPTION:

You are given a string 'S' and a character 't'. Print out the position of the 
rightmost occurrence of 't' (case matters) in 'S' or -1 if there is none. 
The position to be printed out is zero based.

INPUT SAMPLE:

The first argument will ba a path to a filename, containing a string and a character
, comma delimited, one per line. Ignore all empty lines in the input file. E.g. 

Hello World,r
Hello CodeEval,E

OUTPUT SAMPLE:

Print out the zero based position of the character 't' in string 'S', one per line. 
Do NOT print out empty lines between your output. 

E.g.

8
10
 */

