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
                char[] letters = line.ToCharArray();

                decimal total = letters.Length;
                decimal upper = 0;

                foreach(char letter in letters)
                {
                    if(Char.IsUpper(letter))
                    {
                        upper++;
                    }
                }

                decimal upperpct = upper * 100 / total;

                upperpct = Math.Round(upperpct, 2);

                decimal lowerpct = 100 - upperpct;


                Console.WriteLine("lowercase: {0:0.00} uppercase: {1:0.00}", lowerpct, upperpct);

            }
        }

        Console.Read();
    }
}

