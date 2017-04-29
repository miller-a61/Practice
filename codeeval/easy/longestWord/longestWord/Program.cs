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
                string[] words = line.Split(' ');

                string outstring = "";

                foreach (string word in words)
                {
                    if (word.Length > outstring.Length)
                    {
                        outstring = word;
                    }
                }

                Console.WriteLine(outstring);

            }
        }

        Console.Read();
    }
}



/*LONGEST WORD
CHALLENGE DESCRIPTION:

In this challenge you need to find the longest word in a sentence. If the sentence has more than one word of the same length you should pick the first one.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following



1
2
some line with text
another line
Each line has one or more words. Each word is separated by space char.

OUTPUT SAMPLE:

Print the longest word in the following way.



1
2
some
another
SUBMIT SOLUTION

    */
