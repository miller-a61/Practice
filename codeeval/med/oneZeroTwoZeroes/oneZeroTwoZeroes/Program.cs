using System;
using System.IO;
using System.Linq;
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
                string[] num = line.Split(' ');

                int numZeroes = Int32.Parse(num[0]);

                int upperBound = Int32.Parse(num[1]);

                int matchFound = 0;

                for(int i = 1; i <= upperBound; i++)
                {
                    int zerosInNumber = 0;

                    string binary = Convert.ToString(i, 2);

                    foreach(char c in binary)
                    {
                        if (c == '0') zerosInNumber++;
                    }

                    if (zerosInNumber == numZeroes) matchFound++;
                }
                Console.WriteLine(matchFound);
            }
        }

        Console.Read();
    }
}

/*
 * ONE ZERO, TWO ZEROS...
CHALLENGE DESCRIPTION:

Our agent uncovered a global criminal money-laundering network that used offshore companies to defraud international organizations of total $1,000,000,000! The agent changes his location each hour, but he manages to send us the code that we need to decipher. 
Deciphering code includes many stages, and you are taking part in one of them. Therefore, your task is the following: you have two numbers – the first one is the number of zeros in a binary code and the second one shows the range from 1 to this number, where you have to find these zeros. 
For example, for the given numbers 2 and 4, you convert all numbers from 1 to 4 inclusive into the binary system. As a result, you get 1, 10, 11, and 100. As the first given number is 2, this means that we are looking for numbers with two zeros, so only 100 suits us. Hence, the result will be 1: there is only one number with two zeros.

INPUT SAMPLE:

The first argument is a path to a file. Each line includes a test case with two numbers: the first one is the number of zeros in a binary code that we need to find and the second one is the range from 1 to this number where you have to find these zeros.

For example:



1
2
1 8
2 4
OUTPUT SAMPLE:

Print the total number of numerals that contain the needed amount of zeros in a binary system.

For example:



1
2
3
1
CONSTRAINTS:

Range can be from 5 to 1000.
Number of zeros does not exceed the length of binary code number.
The number of test cases is 40.

    */
