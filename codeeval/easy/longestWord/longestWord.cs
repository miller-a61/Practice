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
                string[] words = line.Split(' ');

                string outstring = "";

                foreach (string word in words)
                {
                    if (word.Length > outstring.Length)
                    {
                        outstring = word;
                    }
                }

                Console.WriteLine(outstring);

            }
        }

        Console.Read();
    }
}

