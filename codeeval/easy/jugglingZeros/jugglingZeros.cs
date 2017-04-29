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
            string line, num;
            string[] cells;

            while ((line = sr.ReadLine()) != null)
            {
                cells = line.Split(' ');
                num = "";
                string x;

                for (int i = 0; i < cells.Length; i += 2)
                {
                    x = (cells[i] == "00") ? "1" : "0";
                    num = num + string.Join("", Enumerable.Repeat(x, cells[i + 1].Length));
                }

                Console.WriteLine(Convert.ToUInt32(num,2));               
            }
        }
        Console.Read();
    }

}

