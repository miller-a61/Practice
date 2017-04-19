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
                string[] lists = line.Split(';');
                string[] first = lists[0].Split(',');
                string[] second = lists[1].Split(',');

                string outString = "";

                for (int i = 0; i < first.Length; i++)
                {
                    for (int j = 0; j < second.Length; j++)
                    {
                        if (first[i] == second[j])
                        {
                            outString = outString + first[i] + ",";
                        }
                    }
                }

                outString = outString.TrimEnd(',');

                Console.WriteLine(outString);
            }
        }
        Console.Read();
    }
}
