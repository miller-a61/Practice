using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

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

        double dms, degree, minute, second;
        
        dms = double.Parse(line);

        degree = Math.Floor(dms);

        minute = (dms - degree) * 60;

        second = (minute - Math.Floor(minute)) * 60;

        minute = Math.Floor(minute);

        second = Math.Floor(second);

        Console.WriteLine("{0}.{1}{2}'{3}{4}\"", degree, (minute < 10) ? "0" : "", minute, (second < 10) ? "0" : "", second);
    }
}



