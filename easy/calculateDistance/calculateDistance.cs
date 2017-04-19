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
                line = line.Replace("(", "");
                line = line.Replace(")", "");
                line = line.Replace(",", "");

                string[] words =  line.Split(' ');

                double[] numbers = Array.ConvertAll(words, s => double.Parse(s));

                double length = (numbers[0] - numbers[2]);
                double height = (numbers[1] - numbers[3]);

                double distance = Math.Sqrt(length * length + height * height);





                Console.WriteLine(distance);
            }
        }

        Console.Read();
    }
}
