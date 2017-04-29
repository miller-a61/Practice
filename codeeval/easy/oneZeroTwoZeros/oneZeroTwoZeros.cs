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
