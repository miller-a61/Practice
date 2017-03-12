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
        int numcol = Convert.ToInt32(line);
        int hundred, tens, ones;
        char hunchar, tenchar, onechar;
        bool done = false;

        if (numcol <= 26)
        {
            ones = numcol + 64;
            onechar = Convert.ToChar(numcol + 64);
            Console.WriteLine(onechar);
            done = true;

        }

        if (numcol <= 702 && !done)
        {
            tens = (numcol % 26 == 0) ? (numcol -1) / 26 + 64 : numcol / 26 + 64;
            ones = (numcol % 26 == 0) ? 90 : numcol % 26 + 64;

            tenchar = Convert.ToChar(tens);
            onechar = Convert.ToChar(ones);

            Console.WriteLine("{0}{1}",tenchar,onechar);
            done = true;

        }

        if (!done)
        {
            hundred = (numcol % 676 == 0) ? (numcol - 1) / 676 + 64 : numcol / 676 + 64;
            numcol = numcol - (676 * (numcol / 676));
            tens = (numcol % 26 == 0) ? (numcol - 1) / 26 + 64 : numcol / 26 + 64;
            ones = (numcol % 26 == 0) ? 90 : numcol % 26 + 64;

            hunchar = Convert.ToChar(hundred);
            tenchar = Convert.ToChar(tens);
            onechar = Convert.ToChar(ones);

            Console.WriteLine("{0}{1}{2}", hunchar, tenchar, onechar);
        }

    }
}



