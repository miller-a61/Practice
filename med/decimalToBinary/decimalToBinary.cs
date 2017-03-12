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

                if (line != "")
                {
                    int number = Int32.Parse(line);

                    string outstring = Convert.ToString(number, 2);

                    Console.WriteLine(outstring);
                }
            }
        }

        Console.Read();
    }
}

