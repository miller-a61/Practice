using System;
using System.IO;
class lowerCase
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                Console.WriteLine(line.ToLower());
            }
        }
    }
}


