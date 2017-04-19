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
            string line, input, swap;
            int split;
            int[] numbers;
            string[] swaps, output;

            while ((line = sr.ReadLine()) != null)
            {
                split = line.IndexOf(":");
                input = line.Substring(0, split - 1);
                swap = line.Substring(split + 2);

                numbers = input.Split(' ').Select(x => int.Parse(x)).ToArray();

                swaps = swap.Split(',');

                foreach (var item in swaps)
                {
                    int firstPos, secondPos, idx;
                    idx = item.IndexOf("-");
                    
                    firstPos = int.Parse(item.Substring(0, idx));
                    secondPos = int.Parse(item.Substring(item.IndexOf("-") + 1));
                    
                    swapInts(numbers, firstPos, secondPos);

                }

                output = Array.ConvertAll(numbers, element => element.ToString());
                Console.WriteLine(string.Join(" ", output));
            }
        }
        Console.Read();
    }

    static void swapInts(int[] array, int pos1, int pos2)
    {
        int temp = array[pos1];
        array[pos1] = array[pos2];
        array[pos2] = temp;
    }

}
