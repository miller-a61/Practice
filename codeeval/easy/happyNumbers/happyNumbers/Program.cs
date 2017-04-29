using System;
using System.IO;
using System.Collections.Generic;
class program
{
    static void Main(string[] args)
    {
        using (StreamReader sr = new StreamReader("test_file.txt"))
        //using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                List<string> numbersUsed = new List<string>();

                string currentNum = line;

                numbersUsed.Add(currentNum);

                bool done = false;
                int happy = -1;

                while (!done)
                {

                    int total = 0;

                    //Console.WriteLine("total: {0}", total);
                    //Console.WriteLine("currentNum: {0}", currentNum);
                    //Console.WriteLine();

                    //perform the operation summing the squares of the digits
                    char[] digits = currentNum.ToCharArray();

                    foreach (char digit in digits)
                    {
                        int check = Convert.ToInt16(digit) - 48;

                        total = total + (check * check);

                        currentNum = total.ToString();

                        //Console.WriteLine("New total: {0}", total);

                    }

                    if (total == 1)
                    {
                        happy = 1;
                        done = true;

                        //Console.WriteLine("Happy: {0}", happy);
                    }
                    else
                    {

                        if (numbersUsed.Exists(element => element == currentNum))
                        {
                            happy = 0;
                            done = true;
                            //Console.WriteLine("Happy: {0}", happy);
                        }
                        else
                        {
                            numbersUsed.Add(currentNum);
                            //Console.WriteLine("Add list: {0}", currentNum);
                        }

                    }


                    //Console.WriteLine(currentNum);
                    //Console.WriteLine();
                }

                Console.WriteLine(happy);

            }
        }
        Console.Read();
    }
}


/*
HAPPY NUMBERS
CHALLENGE DESCRIPTION:


A happy number is defined by the following process. Starting with any positive integer, 
replace the number by the sum of the squares of its digits, and repeat the process 
until the number equals 1 (where it will stay), 
or it loops endlessly in a cycle which does not include 1. 
Those numbers for which this process ends in 1 are happy numbers, 
while those that do not end in 1 are unhappy numbers.

INPUT SAMPLE:

The first argument is the pathname to a file which contains test data, 
one test case per line. Each line contains a positive integer. E.g.

1
7
22
OUTPUT SAMPLE:

If the number is a happy number, print out 1. If not, print out 0. E.g

1
1
0
For the curious, here's why 7 is a happy number: 7->49->97->130->10->1. 

Here's why 22 is NOT a happy number: 22->8->64->52->29->85->89->145->42->20->4->16->37->58->89 ...

*/
