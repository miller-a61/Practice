using System.IO;
using System;
class capitalizeWords
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] words = line.Split(' ');
                string outstring = "";

                foreach(string word in words)
                {
                    char[] letters = word.ToCharArray();

                    letters[0] = Char.ToUpper(letters[0]);

                    foreach(char letter in letters)
                    {
                        outstring = outstring + letter;
                    }

                    outstring = outstring + " ";
                }

                outstring = outstring.TrimEnd();

                Console.WriteLine(outstring);
            }
        }
    }
}
