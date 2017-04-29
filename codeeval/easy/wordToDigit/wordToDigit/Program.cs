
using System.IO;
using System;
class wordToDigit
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] words = line.Split(';');
                string outstring = "";

                foreach (string word in words)
                {
                    switch (word)
                    {
                        case "zero":
                            outstring = outstring + "0";
                            break;
                        case "one":
                            outstring = outstring + "1";
                            break;
                        case "two":
                            outstring = outstring + "2";
                            break;
                        case "three":
                            outstring = outstring + "3";
                            break;
                        case "four":
                            outstring = outstring + "4";
                            break;
                        case "five":
                            outstring = outstring + "5";
                            break;
                        case "six":
                            outstring = outstring + "6";
                            break;
                        case "seven":
                            outstring = outstring + "7";
                            break;
                        case "eight":
                            outstring = outstring + "8";
                            break;
                        case "nine":
                            outstring = outstring + "9";
                            break;
                    }
                }

                Console.WriteLine(outstring);
            }
        }
    }
}

/*
 * WORD TO DIGIT
CHALLENGE DESCRIPTION:


Having a string representation of a set of numbers you need to print this numbers.

All numbers are separated by semicolon. There are up to 20 numbers in one line. The numbers are "zero" to "nine"

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file is one test case. E.g.

zero;two;five;seven;eight;four
three;seven;eight;nine;two
OUTPUT SAMPLE:

Print numbers in the following way:

025784
37892
*/
