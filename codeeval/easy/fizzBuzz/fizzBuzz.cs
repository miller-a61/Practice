using System;
using System.IO;
class Fizz_buzz
{
    static void Main(string[] args)
    {
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] param = line.Split(' ');
                string outstring = "";
                int[] param2 = Array.ConvertAll(param, int.Parse);
                int firstModulo = param2[0];
                int secondModulo = param2[1];
                int loopMax = param2[2];
                int j;
                for (j = 1; j <= loopMax; j++)
                {
                    outstring = "";
                    if (j % firstModulo == 0)
                    {
                        outstring = outstring + "F";
                    }
                    if (j % secondModulo == 0)
                    {
                        outstring = outstring + "B";
                    }
                    if (j % firstModulo != 0 && j % secondModulo != 0)
                    {
                        outstring = Convert.ToString(j);
                    }
                    if (j < loopMax)
                    {
                        outstring = outstring + " ";
                    }
                    Console.Write(outstring);
                }
                Console.WriteLine();
            }
            sr.Close();
        }
    }
}

