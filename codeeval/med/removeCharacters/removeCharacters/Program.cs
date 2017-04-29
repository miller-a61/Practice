using System;
using System.IO;
using System.Text.RegularExpressions;

class rightmostChar
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                if (line.Length > 0)
                {
                    string[] split = line.Split(',');
                    split[1] = split[1].Trim();
                    string[] letters = Regex.Split(split[0], string.Empty);
                    string[] test = Regex.Split(split[1], string.Empty);
                    string outstring = "";
                    int i;
                    int j;
                    bool remove = false;
                    for(i = 1; i < letters.Length; i++)
                    {
                        for(j = 1; j < test.Length; j++)
                        {
                            if(letters[i] == test[j])
                            {
                                remove = true;
                            }
                        }
                        if(remove == false)
                        {
                            outstring = outstring + letters[i];
                        }
                        remove = false;
                    }
                    Console.WriteLine(outstring);
                }
            }
            Console.Read();
        }
    }
}



/*
REMOVE CHARACTERS
CHALLENGE DESCRIPTION:


Write a program which removes specific characters from a string.

INPUT SAMPLE:

The first argument is a path to a file. The file contains the source strings and the 
characters that need to be scrubbed. Each source string and characters 
you need to scrub are delimited by comma.

For example:
how are you, abc
hello world, def

OUTPUT SAMPLE:

Print to stdout the scrubbed strings, one per line. Ensure that there are no 
trailing empty spaces on each line you print.

For example:
how re you
hllo worl

*/
