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
            program a = new program();

            while ((line = sr.ReadLine()) != null)
            {
                a.findAnswer(line);
            }
        }
        Console.Read();
    }

    public void findAnswer(string line)
    {
        string first, second;
        char[] arrFirst, arrSecond;
        int numErrors = 0;

        first = line.Substring(0, line.IndexOf('|')-1);
        second = line.Substring(line.IndexOf('|') + 2);

        arrFirst = first.ToCharArray();
        arrSecond = second.ToCharArray();

        for(int i = 0; i < arrFirst.Length; i++)
        {
            if (arrFirst[i] != arrSecond[i])
                numErrors++;
        }

        switch (numErrors)
        {
            case 0:
                Console.WriteLine("Done");
                break;
            case 1:
            case 2:
                Console.WriteLine("Low");
                break;
            case 3:
            case 4:
                Console.WriteLine("Medium");
                break;
            case 5:
            case 6:
                Console.WriteLine("High");
                break;
            default:
                Console.WriteLine("Critical");
                break;

        }

    }
}



