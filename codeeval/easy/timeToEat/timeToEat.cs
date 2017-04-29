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
        string[] arrString = line.Split(' ');

        Array.Sort(arrString);
        Array.Reverse(arrString);

        line = string.Join(" ", arrString);

        Console.WriteLine(line);  

    }
}



