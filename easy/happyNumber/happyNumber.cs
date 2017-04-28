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
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                List<string> numbersUsed = new List<string>();

                string currentNum = line;

                numbersUsed.Add(currentNum);

                bool done = false;
                int happy = -1;

                while (!done)
                {

                    int total = 0;

                    //perform the operation summing the squares of the digits
                    char[] digits = currentNum.ToCharArray();

                    foreach (char digit in digits)
                    {
                        int check = Convert.ToInt16(digit) - 48;

                        total = total + (check * check);

                        currentNum = total.ToString();

                    }

                    if (total == 1)
                    {
                        happy = 1;
                        done = true;

                    }
                    else
                    {

                        if (numbersUsed.Exists(element => element == currentNum))
                        {
                            happy = 0;
                            done = true;
                        }
                        else
                        {
                            numbersUsed.Add(currentNum);
                        }

                    }

                }

                Console.WriteLine(happy);

            }
        }
        Console.Read();
    }
}

