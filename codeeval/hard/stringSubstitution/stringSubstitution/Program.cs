using System;
using System.IO;
class stringSubstitution
{
    static void Main()
    //static void Main(string[] args)
    {
        using (StreamReader sr = new StreamReader("test_file.txt"))
        //using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] arr = line.Split(';');

                string outstring = arr[0];

                string[] replace = arr[1].Split(',');

                int i;

                for(i = 0; i < replace.Length; i = i + 2)
                {
                    Console.WriteLine(replace[i]);
                    Console.WriteLine(replace[i + 1]);
                    outstring = outstring.Replace(replace[i], replace[i + 1]);
                    Console.WriteLine(outstring);
                    Console.WriteLine("endofline");
                }

            }
        }
        Console.Read();
    }
}

/*
 * STRING SUBSTITUTION
CHALLENGE DESCRIPTION:

Credits: This challenge was contributed by Sam McCoy
Given a string S, and a list of strings of positive length, F1,R1,F2,R2,...,FN,RN, proceed to find in order the occurrences (left-to-right) of Fi in S and replace them with Ri. All strings are over alphabet { 0, 1 }. Searching should consider only contiguous pieces of S that have not been subject to replacements on prior iterations. An iteration of the algorithm should not write over any previous replacement by the algorithm.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file is one test case. Each test case will contain a string, then a semicolon and then a list of comma separated strings. E.g.

10011011001;0110,1001,1001,0,10,11
OUTPUT SAMPLE:

For each line of input, print out the string after substitutions have been made.eg.

11100110
For the curious, here are the transitions for the above example: 10011011001 => 10100111001 [replacing 0110 with 1001] => 10100110 [replacing 1001 with 0] => 11100110 [replacing 10 with 11]. So the answer is 11100110


    */
