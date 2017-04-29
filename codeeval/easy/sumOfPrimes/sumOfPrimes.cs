using System;
using System.Collections.Generic;
using System.Collections;

class primeNumber
{
    static void Main(string[] args)
    {
        int length = 8000;

        var primes = getPrime(length);

        int sum = 0;

        

        for (int i = 0; i < 1000; i++)
        {
            sum += primes[i];
        }

        Console.WriteLine(sum);

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

