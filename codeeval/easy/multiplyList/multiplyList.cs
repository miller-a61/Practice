using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;


class program
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line, first, second, output;
            int split;
            int[] number1, number2;         

            while ((line = sr.ReadLine()) != null)
            {

                List<int> product = new List<int>();

                split = line.IndexOf("|");
                first = line.Substring(0, split - 1);
                second = line.Substring(split + 2);
                
                number1 = first.Split(' ').Select(x => int.Parse(x)).ToArray();
                number2 = second.Split(' ').Select(x => int.Parse(x)).ToArray();

                for (int i = 0; i < number1.Length; i++)
                {
                    
                    product.Add(number1[i] * number2[i]); 
                }

                output = string.Join(" ", product.ToArray());

                Console.WriteLine(output);               
            }
        }
        Console.Read();
    }

}

