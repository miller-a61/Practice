using System;
using System.IO;
class swapCase
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

                int i;
                
                for(i = 0; i < line.Length; i ++)
                {
                    if(Char.IsUpper(letters[i]))
                    {
                        letters[i] = Char.ToLower(letters[i]);
                    }
                    else if(Char.IsLower(letters[i]))
                     {
                        letters[i] = Char.ToUpper(letters[i]);
                    }
                }
               
                foreach(char letter in letters)
                {
                    Console.Write(letter);
                }

                Console.WriteLine();

            }
        }
    }
}
