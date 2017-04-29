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
                string[] digits = line.Split(',');

                string outString = Convert.ToString(digits[0]);

                for(int i = 1; i < digits.Length; i++)
                {
                    if(digits[i-1] != digits[i])
                    {
                        outString = outString + "," + Convert.ToString(digits[i]);
                    }
                }

                Console.WriteLine(outString);
            }
        }
        Console.Read();
    }
}
