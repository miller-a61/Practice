using System;
using System.IO;
class bitPositions
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] items = line.Split(',');

                int num = Int32.Parse(items[0]);
                int x = Int32.Parse(items[1]);
                int y = Int32.Parse(items[2]);

                string test = Convert.ToString(num, 2);

                int length = test.Length;

                int firstPosition = length - x;
                int secondPosition = length - y;

                string firstBit = test.Substring(firstPosition, 1);
                string secondBit = test.Substring(secondPosition, 1);

                string same = "false";

                if (firstBit == secondBit)
                {
                    same = "true";
                };

                Console.WriteLine(same);

            }
        }

        Console.Read();
    }
}
