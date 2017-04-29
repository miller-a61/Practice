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
                line = line.Replace("(", "");
                line = line.Replace(")", "");
                line = line.Replace(",", "");

                string[] words =  line.Split(' ');

                double[] numbers = Array.ConvertAll(words, s => double.Parse(s));

                double length = (numbers[0] - numbers[2]);
                double height = (numbers[1] - numbers[3]);

                double distance = Math.Sqrt(length * length + height * height);

                Console.WriteLine(distance);
            }
        }

        Console.Read();
    }
}

/*
CALCULATE DISTANCE
CHALLENGE DESCRIPTION:


You have coordinates of 2 points and need to find the distance between them.

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Input example is the following



1
2
(25, 4) (1, -6)
(47, 43) (-25, -11)
All numbers in input are integers between -100 and 100.

OUTPUT SAMPLE:

Print results in the following way.



1
2
26
90
You don't need to round the results you receive. They must be integer numbers.
 * */
