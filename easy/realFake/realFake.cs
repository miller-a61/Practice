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

    public string findAnswer(string line)
    {
        line = line.Replace(" ", "");
        int sum = 0;

        for(int i = 0; i < 16; i++)
        {
            sum = (i%2 == 0) ?  (line[i] - 48) *2 : line[i] - 48;
        }

        return (sum % 10 == 0) ? "Real" : "Fake";
    }
}


