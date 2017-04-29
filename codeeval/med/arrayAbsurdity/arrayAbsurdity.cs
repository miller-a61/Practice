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
                a.findAnswer(line);
            }
        }
        Console.Read();
    }

    public void findAnswer(string line)
    {
        string arr = line.Substring(line.IndexOf(';') + 1);

        int[] numbers = arr.Split(',').Select(int.Parse).ToArray();

        int answer = -1;

        Array.Sort(numbers);

        for(int i = 0; i < numbers.Length -1; i++)
        {
            if (numbers[i] == numbers[i + 1])
                answer = numbers[i];
        }

        Console.WriteLine(answer);
   
    }
}
