using System;
using System.IO;

namespace clean_up_words
{
    class CleanUpWords
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
                string lower = "abcdefghijklmnopqrstuvwxyz";
                string upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

                StringComparison comp = StringComparison.Ordinal;

                while ((line = sr.ReadLine()) != null)
                {
                    //read the stream to a string, and remove numbers
                    //symbols; convert to lower case
                    //put spaces between words
                    //write final output to the console

                    string outstring = "";

                    int j;
                    string k;
                    string l = "";

                    for (j = 0; j < line.Length; j++)
                    {

                        k = line[j].ToString();

                        if (j > 0)
                        {
                            l = line[j - 1].ToString();
                        }

                        if (lower.Contains(k))
                        {
                            outstring = outstring + k;
                        }

                        if (upper.Contains(k))
                        {
                            outstring = outstring + k.ToLower();
                        }

                        if (!upper.Contains(k) && !lower.Contains(k))
                        {
                            if (j > 0 && (upper.Contains(l)) || lower.Contains(l))
                            {
                                outstring = outstring + " ";
                            }
                        }

                    }

                    outstring = outstring.TrimEnd(' ');
                    outstring = outstring.TrimStart(' ');

                    Console.WriteLine(outstring);
                }

                sr.Close();
            }
            //Console.ReadLine();
        }
    }
}

