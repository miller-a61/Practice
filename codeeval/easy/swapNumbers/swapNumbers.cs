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

                int i;

                for (i = 0; i < words.Length; i++)
                {
                    char last = words[i][words[i].Length - 1];
                    char first = words[i][0];
                    string middle = words[i].Substring(1, words[i].Length - 2);

                    if (i < words.Length -1)
                    {
                        outstring = last + middle + first + " ";
                    }
                    else
                    {
                        outstring = last + middle + first;
                    }

                    Console.Write(outstring);
                }
               Console.WriteLine();
            }
        }
        //Console.Read();
    }
}

