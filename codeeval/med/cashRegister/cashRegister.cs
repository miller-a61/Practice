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
        double pp, ch, change;
        string answer = "";

        pp = Convert.ToDouble(line.Substring(0, line.IndexOf(';')));
        ch = Convert.ToDouble(line.Substring(line.IndexOf(';')+ 1));

        change = Math.Round(ch - pp, 2);

        if (pp > ch)
            answer = "ERROR";
        else if (pp == ch)
            answer = "ZERO";


        if (change >= 100.0)
        {
            answer += "ONE HUNDRED,";
            change = Math.Round(change - 100.0, 2);
        }

        if (change >= 50.0)
        {
            answer += "FIFTY,";
            change = Math.Round(change - 50.0, 2);
        }

        if (change >= 20.0)
        {
            answer += "TWENTY,";
            change = Math.Round(change - 20.0, 2);
        }

        if (change >= 20.0)
        {
            answer += "TWENTY,";
            change = Math.Round(change - 20.0, 2);
        }

        if (change >= 10.0)
        {
            answer +=  "TEN,";
            change = Math.Round(change - 10.0, 2);
        }

        if (change >= 5.0)
        {
            answer += "FIVE,";
            change = Math.Round(change - 5.0, 2);
        }

        if (change >= 2.0)
        {
            answer += "TWO,";
            change = Math.Round(change - 2.0, 2);
        }

        if (change >= 2.0)
        {
            answer += "TWO,";
            change = Math.Round(change - 2.0, 2);
        }

        if (change >= 1.0)
        {
            answer += "ONE,";
            change = Math.Round(change - 1.0, 2);
        }

        if (change >= 0.50)
        {
            answer += "HALF DOLLAR,";
            change = Math.Round(change - 0.50, 2);
        }

        if (change >= 0.25)
        {
            answer += "QUARTER,";
            change = Math.Round(change - 0.25, 2);
        }

        if (change >= 0.10)
        {
            answer += "DIME,";
            change = Math.Round(change - 0.10, 2);
        }

        if (change >= 0.10)
        {
            answer += "DIME,";
            change = Math.Round(change - 0.10, 2);
        }

        if (change >= 0.05)
        {
            answer += "NICKEL,";
            change = Math.Round(change - 0.05, 2);
        }

        if (change >= 0.01)
        {
            answer += "PENNY,";
            change = Math.Round(change - 0.01, 2);
        }

        if (change >= 0.01)
        {
            answer += "PENNY,";
            change = Math.Round(change - 0.01, 2);
        }

        if (change >= 0.01)
        {
            answer += "PENNY,";
            change = Math.Round(change - 0.01, 2);
        }

        if (change >= 0.01)
        {
            answer += "PENNY,";
            change = Math.Round(change - 0.01, 2);
        }
        if (answer.Substring(answer.Length - 1) == ",")
            answer = answer.Substring(0, answer.Length - 1);

        Console.WriteLine(answer);

    }
}



