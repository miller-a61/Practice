using System;
using System.Collections.Generic;
using System.IO;
class Program
{
    static void Main(string[] args)
    {
        List<string> fileLines = new List<string>();

       using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            string binary;
            int num;

            while ((line = sr.ReadLine()) != null)
            {
                fileLines.Add(line);
            }

            fileLines.ForEach(delegate(String row)
                {
                    num = int.Parse(row);
                    binary = Convert.ToString(num, 2);

                    binary = binary.Replace("0", "");

                    Console.WriteLine(binary.Length);

                });

        }
        Console.Read();
    }
}

