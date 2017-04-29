using System;
using System.IO;
class CleanUpWords
{
    static void Main(string[] args)
    {

        using (StreamReader sr = File.OpenText(args[0]))
        {

            string line;
            string lower = "abcdefghijklmnopqrstuvwxyz";
            string upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

            while ((line = sr.ReadLine()) != null)
            {

                string outstring = "";

                int j;
                string k;
                string l = "";

                for (j = 0; j < line.Length; j++)
                {

                    k = line[j].ToString();

                    if (j > 0)
                    {
                        l = line[j - 1].ToString();
                    }

                    if (lower.Contains(k))
                    {
                        outstring = outstring + k;
                    }

                    if (upper.Contains(k))
                    {
                        outstring = outstring + k.ToLower();
                    }

                    if (!upper.Contains(k) && !lower.Contains(k))
                    {
                        if (j > 0 && (upper.Contains(l)) || lower.Contains(l))
                        {
                            outstring = outstring + " ";
                        }
                    }

                }

                outstring = outstring.TrimEnd(' ');
                outstring = outstring.TrimStart(' ');

                Console.WriteLine(outstring);
            }

            sr.Close();
        }
    }
}

/*CLEAN UP THE WORDS
CHALLENGE DESCRIPTION:

You have a list of words. Letters of these words are mixed with extra symbols, so it is hard to define the beginning and end of each word. Write a program that will clean up the words from extra numbers and symbols.

INPUT SAMPLE:

The first argument is a path to a file. Each line includes a test case with a list of words: letters are both lowercase and uppercase, and are mixed with extra symbols.

For example:

(--9Hello----World...--)
Can 0$9 ---you~
13What213are;11you-123+138doing7
OUTPUT SAMPLE:

Print the cleaned up words separated by spaces in lowercase letters.

For example:

hello world
can you
what are you doing
CONSTRAINTS:

Print the words separated by spaces in lowercase letters.
The length of a test case together with extra symbols can be in a range from 10 to 100 symbols.
The number of test cases is 40.

    */