using System;
using System.IO;
class Program
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            int i;
            while ((line = sr.ReadLine()) != null)
            {
                string[] words = line.Split(' ');
                i = words.Length - 2;
                Console.WriteLine(words[i]);
            }
        }
    }
}

