using System.IO;
using System;
class capitalizeWords
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] words = line.Split(' ');
                string outstring = "";

                foreach(string word in words)
                {
                    char[] letters = word.ToCharArray();

                    letters[0] = Char.ToUpper(letters[0]);

                    foreach(char letter in letters)
                    {
                        outstring = outstring + letter;
                    }

                    outstring = outstring + " ";
                }

                outstring = outstring.TrimEnd();

                Console.WriteLine(outstring);
            }
        }
    }
}

/*CAPITALIZE WORDS
CHALLENGE DESCRIPTION:


Write a program which capitalizes the first letter of each word in a sentence.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following



1
2
3
4
Hello world
javaScript language
a letter
1st thing
OUTPUT SAMPLE:

Print capitalized words in the following way.



1
2
3
4
Hello World
JavaScript Language
A Letter
1st Thing
*/

