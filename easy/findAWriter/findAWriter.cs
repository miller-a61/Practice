using System;
using System.IO;
class findAWriter
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            int i;
            int position;
            while ((line = sr.ReadLine()) != null)
            {
                string outstring = "";
                if (line.Length > 0)
                {
                    string[] split = line.Split('|');
                    string[] pos = split[1].Split(' ');
                    for (i = 1; i <= pos.GetLength(0) - 1; i++)
                    {
                        position = int.Parse(pos[i]) - 1;
                        outstring = outstring + split[0][position];
                    }
                    Console.WriteLine(outstring);
                }
            }
        }
    }
}


