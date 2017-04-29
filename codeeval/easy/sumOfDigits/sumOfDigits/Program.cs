using System;
using System.IO;
class sumOfDigits
{
    //static void Main()
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                char[] digits = line.ToCharArray();

                int sum = 0;

                foreach(char d in digits)
                {
                    sum = sum + Convert.ToInt32(d) -48; //convert ascii value to numeric value
                }

                Console.WriteLine(sum);
            }
        }
    }
}