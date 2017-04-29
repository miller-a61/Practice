using System;
using System.IO;
class sumOfIntegersFromFile
{
    static void Main(string[] args)
    {
        int sum = 0;

        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {

                sum = sum + Int32.Parse(line);
            }
        }
        Console.WriteLine(sum);

        Console.Read();
    }
}


