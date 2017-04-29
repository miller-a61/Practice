using System;
using System.IO;
using System.Text.RegularExpressions;

class rightmostChar
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
                if (line.Length > 0)
                {
                    string[] split = line.Split(',');
                    string[] letters = Regex.Split(split[0], string.Empty);
                    string charpos = split[1];
                    int position = Array.LastIndexOf(letters, charpos) - 1;
                    if(position == -2)
                    {
                        position = -1;
                    }
                    Console.WriteLine(position);
                }
            }
        }
    }
}




