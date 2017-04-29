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
                string[] strings = line.Split(';');
                string seek = strings[0];
                string find = strings[1];
                string outstring = "";

                seek = seek.Replace(" ", "");
                find = find.Replace(" ", "");

                Console.WriteLine("Seek: {0}",seek);
                Console.WriteLine("Find: {0}",find);
                for (int i = 0; i < seek.Length; i++)
                {
                    int index = find.IndexOf(seek[i]);
                    string tempString = "";

                    if (tempString == "")
                    {
                        tempString = Convert.ToString(seek[i]);
                    }

                    if (index >= 0)
                    {
                        for (int j = i + 1; j < seek.Length; j++)
                        {
                            string newFind = find.Substring(index);
                            int index2 = newFind.IndexOf(seek[j]);

                            if (index2 > 0)
                            {
                                tempString = tempString + Convert.ToString(seek[j]);
                                index += index2;
                            }
                        }

                        if (tempString.Length > outstring.Length)
                        {
                            outstring = tempString;
                        }

                    }
                }
                outstring = outstring.TrimEnd();
                Console.WriteLine(outstring);
            }

            Console.Read();
        }
    }
}

/*LONGEST COMMON SUBSEQUENCE
CHALLENGE DESCRIPTION:

You are given two sequences. Write a program to determine the longest common subsequence 
between the two strings (each string can have a maximum length of 50 characters). 
NOTE: This subsequence need not be contiguous. The input file may contain empty lines, these need to be ignored.

INPUT SAMPLE:

The first argument will be a path to a filename that contains two strings per line, 
semicolon delimited. You can assume that there is only one unique subsequence per test case. E.g.

XMJYAUZ;MZJAWXU
OUTPUT SAMPLE:

The longest common subsequence. Ensure that there are no trailing empty spaces on each line you print. E.g.

MJAU
*/
