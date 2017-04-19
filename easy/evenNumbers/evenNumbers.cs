using System.IO;
using System;
class program
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                int num = Int32.Parse(line);

                int mod = num % 2;

                if (mod == 1)
                { mod = 0; }
                else { mod = 1; }

                Console.WriteLine(mod);
            }
        }
    }
}


