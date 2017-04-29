using System;
using System.Collections.Generic;
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
            program a = new program();

            while ((line = sr.ReadLine()) != null)
            {
                Console.WriteLine(a.findAnswer(line));
            }
        }
        Console.Read();
    }

    public int findAnswer(string line)
    {
        int input = int.Parse(line);
        int sum = 0;

        sum += input / 5;
        sum += input % 5 / 3;
        sum += input % 5 % 3;

        return sum;
    }
}

