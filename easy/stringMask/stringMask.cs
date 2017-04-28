using System.IO;
using System;
class program
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] param = line.Split(' ');

                char[] letters = param[0].ToCharArray();
                char[] mask = param[1].ToCharArray();

                int i;

                string outstring = "";

                for (i = 0; i < letters.Length; i++)
                {

                    if (mask[i] == '1')
                    { outstring = outstring + Char.ToUpper(letters[i]); }
                    else
                    { outstring = outstring + Char.ToLower(letters[i]); }
                }


                Console.WriteLine(outstring);
            }
        }
    }
}
