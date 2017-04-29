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
                string[] letters = line.Split(',');

                int x = Int32.Parse(letters[0]);
                int n = Int32.Parse(letters[1]);
                int answer = 0;
                int multiplier = 1;

                while (answer < x)
                {
                    answer = n * multiplier;
                    multiplier++;
                }

                Console.WriteLine(answer);
            }
        }
        Console.Read();
    }
}
