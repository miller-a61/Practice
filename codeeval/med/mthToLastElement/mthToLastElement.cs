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
                string[] items = line.Split(' ');

                string shift = items[items.Length - 1];

                int num = Int32.Parse(shift);

                if(num < items.Length)
                {
                    int len = items.Length - 1 - num;

                    Console.WriteLine(items[items.Length - 1 - num]);
                }


            }
        }

        //Console.Read();
    }
}
