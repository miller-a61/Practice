using System;
using System.IO;

namespace reverse_words
{
    class reverseWords
    {
        //used for testing locally
        //static void Main()

        //used for submission
        static void Main(string[] args)
        {

            //open the text file using a streamreader

            //use for testing locally
            //using (StreamReader sr = new StreamReader("test_file.txt"))

            //use for submission
            using (StreamReader sr = File.OpenText(args[0]))
            {

                string line;

                while ((line = sr.ReadLine()) != null)
                {
                    //read the stream to a string, and write the string to the console

                    string[] words = line.Split(' ');
                    string outstring = "";

                    int j;

                    for (j = words.Length - 1; j >= 0; j--)
                    {

                         outstring = outstring + words[j] + " ";
                    }

                    outstring = outstring.TrimEnd(' ');
                    Console.WriteLine(outstring);
                }

                sr.Close();

            }

            Console.Read();
        }        
    }
}

