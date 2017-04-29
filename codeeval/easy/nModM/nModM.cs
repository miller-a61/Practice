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
                int dividend = Int32.Parse(digits[0]);
                int divisor = Int32.Parse(digits[1]);

                double quotient = dividend / divisor;

                quotient = Math.Floor(quotient);
                int intquotient = Convert.ToInt32(quotient);

                int remainder = dividend - (divisor * intquotient);

                Console.WriteLine(remainder);
            }
        }
    }
}
