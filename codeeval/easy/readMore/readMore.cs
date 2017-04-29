using System;
using System.IO;
using System.Collections.Generic;
class program
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line, output, sub;

            while ((line = sr.ReadLine()) != null)
            {

                sub = (line.Length <= 55) ? line : line.Substring(0, 40);
                char[] arr = sub.ToCharArray();
                Array.Reverse(arr);
                string reverse = new string(arr);

                var spaceIndex = reverse.IndexOf(" ");
               
                output = (line.Length <= 55) ? line : line.Substring(0, 39 - spaceIndex) + "... <Read More>";
                                   
                Console.WriteLine(output);
            }
        }
        //Console.Read();
    }
}
