using System;
using System.IO;
using System.Collections.Generic;
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
                
                decimal[] numbers = Array.ConvertAll(words, decimal.Parse);

                Array.Sort(numbers);

                words = Array.ConvertAll(numbers, x=> x.ToString());

                string output = String.Join(" ", words);

                Console.WriteLine(output);
            }
        }
        Console.Read();
    }
}
