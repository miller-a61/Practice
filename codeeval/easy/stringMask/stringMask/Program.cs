using System.IO;
using System;
class program
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] param = line.Split(' ');

                char[] letters = param[0].ToCharArray();
                char[] mask = param[1].ToCharArray();

                int i;

                string outstring = "";

                for (i = 0; i < letters.Length; i++)
                {

                    if (mask[i] == '1')
                    { outstring = outstring + Char.ToUpper(letters[i]); }
                    else
                    { outstring = outstring + Char.ToLower(letters[i]); }
                }


                Console.WriteLine(outstring);
            }
        }
    }
}

/*
 * STRING MASK
CHALLENGE DESCRIPTION:

You’ve got a binary code which has to be buried among words in order to unconsciously pass the cipher. 
Create a program that would cover the word with a binary mask. If, while covering, a letter finds itself as 1, you have to change its register to the upper one, if it’s 0, leave it as it is. Words are always in lower case and in the same row with the binary mask.

INPUT SAMPLE:

The first argument is a path to a file. Each row contains a test case with a word and a binary code separated with space, inside of it. The length of each word is equal to the length of the binary code.

For example:



1
2
3
hello 11001
world 10000
cba 111
OUTPUT SAMPLE:

Print the encrypted words without binary code.

For example:



1
2
3
HEllO
World
CBA
CONSTRAINTS:

Words are from 1 to 20 letters long.
The number of test cases is 40.
*
*/
