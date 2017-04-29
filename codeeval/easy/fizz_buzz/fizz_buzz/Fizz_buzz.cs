﻿using System;
using System.IO;

namespace fizz_buzz
{
    class Fizz_buzz
    {   
        //used for testing locally
        //static void Main()
        
        //used for submission
        static void Main(string[] args)
        {

            try
            {
                //open the text file using a streamreader

                //use for testing locally
                //using (StreamReader sr = new StreamReader("test_file.txt"))

                //use for submission
                using (StreamReader sr = File.OpenText(args[0]))
                {

                    string line;

                    while ((line = sr.ReadLine()) != null)
                    {
                        //read the stream to a string, and write the string to the console

                        string[] param = line.Split(' ');

                        string outstring = "";

                        int[] param2 = Array.ConvertAll(param, int.Parse);

                        int firstModulo = param2[0];
                        int secondModulo = param2[1];
                        int loopMax = param2[2];

                        int j;

                        for (j = 1; j <= loopMax; j++)
                        {

                            outstring = "";

                            if (j % firstModulo == 0)
                            {
                                outstring = outstring +  "F";
                            }

                            if (j % secondModulo == 0)
                            {
                                outstring = outstring + "B";
                            }

                            if (j % firstModulo != 0 && j % secondModulo != 0)
                            {
                                outstring = Convert.ToString(j);
                            }

                            if (j < loopMax)
                            {
                                outstring = outstring + " ";
                            }

                            Console.Write(outstring);
                            
                        }

                        Console.WriteLine();
                    }

                    sr.Close();

                }

            }
            catch (Exception e)
            {
                Console.WriteLine("The file could not be read:");
                Console.WriteLine(e.Message);
            }

            //Console.ReadLine();
        }
    }
}

/*
FIZZ BUZZ
CHALLENGE DESCRIPTION:


Players generally sit in a circle. The first player says the number “1”, 
and each player says next number in turn. However, any number divisible by X (for example, three) 
is replaced by the word fizz, and any divisible by Y (for example, five) by the word buzz. 
Numbers divisible by both become fizz buzz. A player who hesitates, or makes a mistake 
is eliminated from the game.

Write a program that prints out the final series of numbers where those divisible by X, Y 
and both are replaced by “F” for fizz, “B” for buzz and “FB” for fizz buzz.

INPUT SAMPLE:

Your program should accept a file as its first argument. The file contains multiple 
separated lines; each line contains 3 numbers that are space delimited. 
The first number is the first divider (X), the second number is the second divider (Y), 
and the third number is how far you should count (N). You may assume that the input file 
is formatted correctly and the numbers are valid positive integers.

For example:

3 5 10
2 7 15

OUTPUT SAMPLE:

Print out the series 1 through N replacing numbers divisible by X with “F”, 
numbers divisible by Y with “B” and numbers divisible by both with “FB”. 
Since the input file contains multiple sets of values, your output should print out one line per set. 
Ensure that there are no trailing empty spaces in each line you print.

1 2 F 4 B F 7 8 F B
1 F 3 F 5 F B F 9 F 11 F 13 FB 15

CONSTRAINTS:

The number of test cases ≤ 20
"X" is in range [1, 20]
"Y" is in range [1, 20]
"N" is in range [21, 100]

*/