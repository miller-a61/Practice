using System;
using System.IO;
class swapCase
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                char[] letters = line.ToCharArray();

                int i;
                
                for(i = 0; i < line.Length; i ++)
                {
                    if(Char.IsUpper(letters[i]))
                    {
                        letters[i] = Char.ToLower(letters[i]);
                    }
                    else if(Char.IsLower(letters[i]))
                     {
                        letters[i] = Char.ToUpper(letters[i]);
                    }
                }
               
                foreach(char letter in letters)
                {
                    Console.Write(letter);
                }

                Console.WriteLine();

            }
        }
    }
}


/*SWAP CASE
CHALLENGE DESCRIPTION:


Write a program which swaps letters' case in a sentence. All non-letter characters should remain the same.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following

Hello world!
JavaScript language 1.8
A letter
OUTPUT SAMPLE:

Print results in the following way.

hELLO WORLD!
jAVAsCRIPT LANGUAGE 1.8
a LETTER
*/
