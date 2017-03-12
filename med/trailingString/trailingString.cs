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
            int output;
            program a = new program();

            while ((line = sr.ReadLine()) != null)
            {
                line = line.Trim();

                if (line.Length > 0)
                {
                    output = a.findAnswer(line);

                    Console.WriteLine(output);
                }
            }
        }
        Console.Read();
    }

    public int findAnswer(string line)
    {
        string A, B;

        A = line.Substring(0, line.IndexOf(','));
        B = line.Substring(line.IndexOf(',')+1);

        if (B.Length > A.Length) return 0;

        return (B == A.Substring(A.Length - B.Length)) ? 1:0;
    }
}


