using System;
using System.IO;
using System.Collections.Generic;
using System.Collections;

class primePalindrome
{
    public const int numPrimes = 1000;
    static void Main(string[] args)
    {

        var primes = getPrime(numPrimes);

        string outstring = "";
        string revString = "";
        string testString = "";

        foreach (int prime in primes)
        {
            testString = prime.ToString();

            revString = reverseString(testString);

            if (testString == revString)
            {
                outstring = testString;

            }
        }

        Console.WriteLine(outstring);


        Console.Read();
    }


    public static string reverseString(string rev)
    {
        char[] arr = rev.ToCharArray();
        Array.Reverse(arr);
        return new string(arr);
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
