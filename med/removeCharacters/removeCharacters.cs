using System;
using System.IO;
using System.Text.RegularExpressions;

class rightmostChar
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                if (line.Length > 0)
                {
                    string[] split = line.Split(',');
                    split[1] = split[1].Trim();
                    string[] letters = Regex.Split(split[0], string.Empty);
                    string[] test = Regex.Split(split[1], string.Empty);
                    string outstring = "";
                    int i;
                    int j;
                    bool remove = false;
                    for(i = 1; i < letters.Length; i++)
                    {
                        for(j = 1; j < test.Length; j++)
                        {
                            if(letters[i] == test[j])
                            {
                                remove = true;
                            }
                        }
                        if(remove == false)
                        {
                            outstring = outstring + letters[i];
                        }
                        remove = false;
                    }
                    Console.WriteLine(outstring);
                }
            }
            Console.Read();
        }
    }
}
