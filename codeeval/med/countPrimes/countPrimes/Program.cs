using System;
using System.IO;
using System.Collections.Generic;
using System.Collections;
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
                string[] param = line.Split(',');

                int length = Int32.Parse(param[1])+1;

                int start = Int32.Parse(param[0]);

                if(length < start)
                {
                    int temp = length;
                    length = start;
                    start = temp;
                }

                var primes = getPrime(length);

                int count = 0;

                foreach (int prime in primes)
                {
                    if (prime >= start && prime <= length)
                    {
                        count++;
                    }
                }

                Console.WriteLine(count);

            }
        }

        Console.Read();

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
                    for (int j = i * i; j < number; j += i)
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
 * Challenge
VIEW ALL CHALLENGES
COUNTING PRIMES
CHALLENGE DESCRIPTION:


Given two integers N and M, count the number of prime numbers between N and M (both inclusive)

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.



1
2
2,10
20,30
OUTPUT SAMPLE:

Print out the number of primes between N and M (both inclusive)



1
2
4
2
SUBMIT SO
*/
