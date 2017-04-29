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
                char[] letters = line.ToCharArray();

                decimal total = letters.Length;
                decimal upper = 0;

                foreach(char letter in letters)
                {
                    if(Char.IsUpper(letter))
                    {
                        upper++;
                    }
                }

                decimal upperpct = upper * 100 / total;

                upperpct = Math.Round(upperpct, 2);

                decimal lowerpct = 100 - upperpct;


                Console.WriteLine("lowercase: {0:0.00} uppercase: {1:0.00}", lowerpct, upperpct);

            }
        }

        Console.Read();
    }
}


/*LETTERCASE PERCENTAGE RATIO
CHALLENGE DESCRIPTION:


Your task is to write a program which determines (calculates) the percentage ratio of lowercase and uppercase letters.

INPUT SAMPLE:

Your program should accept a file as its first argument. Each line of input contains a string with uppercase and lowercase letters.

For example:



1
2
3
4
thisTHIS
AAbbCCDDEE
N
UkJ
OUTPUT SAMPLE:

For each line of input, print the percentage ratio of uppercase and lowercase letters rounded to the second digit after the point.

For example:



1
2
3
4
lowercase: 50.00 uppercase: 50.00
lowercase: 20.00 uppercase: 80.00
lowercase: 0.00 uppercase: 100.00
lowercase: 33.33 uppercase: 66.67
SUBMIT SOLUTION

    */