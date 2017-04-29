using System;
using System.Text;
class primePalindrome
{
    static void Main(string[] args)
    {
        int product;
        string output;

        for (int i = 1; i <= 12; i++)
        {
            for (int j = 1; j <= 12; j++)
            {
                product = i * j;

                output = product.ToString();

                output = output.PadLeft(4, ' ');

                Console.Write(output);
            }
            Console.WriteLine();
        }

        Console.Read();
    }
}
