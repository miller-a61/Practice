using System;
using System.IO;
using System.Collections.Generic;
using System.Collections;

class primeNumber
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                
                int length = Int32.Parse(line);

                var primes = getPrime(length);

                string outstring = "";

                foreach(int prime in primes)
                {
                    outstring = outstring + prime.ToString() + ',';
                }

                outstring = outstring.TrimEnd(',');
                Console.WriteLine(outstring);

            }

            Console.Read();
        }
    }

    private static List<int> getPrime(int number)
    {
        var prime = new List<int>();

        var sqrRoot = (int)Math.Sqrt(number);

        var isNotPrime = new BitArray(number + 1);

        for (int i = 2; i < number; ++i)
        {
            if (!isNotPrime[i])
            {
                prime.Add(i);

                if (i <= sqrRoot)
                {
                    for(int j = i * i; j < number; j+=i)
                    {
                        isNotPrime[j] = true;
                    }
                }
            }
        }

        return prime;

    }
}

/*
 * PRIME NUMBERS
CHALLENGE DESCRIPTION:

Print out the prime numbers less than a given number N. For bonus points your solution should run in N*(log(N)) time or better. You may assume that N is always a positive integer.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Each test case will contain an integer n < 4,294,967,295. E.g.

10
20
100
OUTPUT SAMPLE:

For each line of input, print out the prime numbers less than N, in ascending order, comma delimited. (There should not be any spaces between the comma and numbers) E.g.

2,3,5,7
2,3,5,7,11,13,17,19
2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97
*/
