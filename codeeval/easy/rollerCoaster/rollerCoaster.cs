using System;
using System.IO;
class program
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                char[] letters = line.ToCharArray();

                bool isLower = false;

                string outstring = "";

                foreach (char letter in letters)
                {
                    if ((letter >= 97 && letter <= 122) || (letter >= 65 && letter <= 90))
                    {
                        if(isLower == false)
                        {
                            outstring = outstring + char.ToUpper(letter);
                            isLower = true;

                        }
                        else
                        {
                            outstring = outstring + char.ToLower(letter);
                            isLower = false;
                        }
                    }
                    else
                    {
                        outstring = outstring + letter;
                    }
                }

                Console.WriteLine(outstring);

            }
        }

        Console.Read();
    }
}

