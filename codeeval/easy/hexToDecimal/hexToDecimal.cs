using System;
using System.IO;
class hexToDecimal
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                int value = Convert.ToInt32(line, 16);

                Console.WriteLine(value);
            }
        }
    }
}
