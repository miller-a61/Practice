using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class textDollar
{
    //static void Main()
    static void Main(string[] args)
    {
        List<string> fileLines = new List<string>();

        textDollar td = new textDollar();

        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;

            while ((line = sr.ReadLine()) != null)
            {
                fileLines.Add(line);
            }

            fileLines.ForEach(delegate (string row)
            {
                string outstring = "Dollars";
                char digit;
                char nextDigit = ' ';
                int i;
                int max;

                //Console.WriteLine(row);

                row = reverseString(row);

                max = row.Length;
                for (i = 1; i <= max; i++)
                {
                    nextDigit = ' ';
                    digit = row[i - 1];

                    if (i < max)
                    {
                        nextDigit = row[i];
                    }

                    //ones digit of each 3-digit group
                    if (i == 1 || i == 4 || i == 7)
                    {
                        if (i == 4)
                        {
                            outstring = "Thousand" + outstring;
                        }

                        if (i == 7)
                        {
                            outstring = "Million" + outstring;
                        }

                        if (nextDigit.Equals('1'))
                        {
                            outstring = td.getTeens(digit) + outstring;
                        }
                        else
                        {
                            outstring = td.getOnes(digit, false) + outstring;
                        }
                    }
                    //tens digit of each 3-digit group
                    if (i == 2 || i == 5 || i == 8)
                    {
                        outstring = td.getTens(digit) + outstring;
                    }
                    //hundreds digit of each 3-digit group
                    if (i == 3 || i == 6 || i == 9)
                    {
                        outstring = td.getOnes(digit, true) + outstring;
                    }

                }

                outstring = outstring.Replace("MillionThousand", "Million");

                Console.WriteLine(outstring);
            });

            Console.Read();

        }
    }
    public string getOnes(char digit, bool hundreds)
    {
        string returnOnes = "";
        string returnHundreds = "";
        
        if(hundreds == true)
        {
            returnHundreds = "Hundred";
        }

        switch (digit)
        {
            case '1':
                returnOnes = "One" + returnHundreds;
                break;
            case '2':
                returnOnes = "Two" + returnHundreds;
                break;
            case '3':
                returnOnes = "Three" + returnHundreds;
                break;
            case '4':
                returnOnes = "Four" + returnHundreds;
                break;
            case '5':
                returnOnes = "Five" + returnHundreds;
                break;
            case '6':
                returnOnes = "Six" + returnHundreds;
                break;
            case '7':
                returnOnes = "Seven" + returnHundreds;
                break;
            case '8':
                returnOnes = "Eight" + returnHundreds;
                break;
            case '9':
                returnOnes = "Nine" + returnHundreds;
                break;

        }
        return returnOnes;
    }

    public string getTens(char digit)
    {
        string returnTens = "";

        switch (digit)
        {
            case '2':
                returnTens = "Twenty";
                break;
            case '3':
                returnTens = "Thirty";
                break;
            case '4':
                returnTens = "Forty";
                break;
            case '5':
                returnTens = "Fifty";
                break;
            case '6':
                returnTens = "Sixty";
                break;
            case '7':
                returnTens = "Seventy";
                break;
            case '8':
                returnTens = "Eighty";
                break;
            case '9':
                returnTens = "Ninety";
                break;

        }
        return returnTens;
    }

    public string getTeens(char digit)
    {
        string returnTeens = "";

        switch (digit)
        {
            case '0':
                returnTeens = "Ten";
                break;
            case '1':
                returnTeens = "Eleven";
                break;
            case '2':
                returnTeens = "Twelve";
                break;
            case '3':
                returnTeens = "Thirteen";
                break;
            case '4':
                returnTeens = "Fourteen";
                break;
            case '5':
                returnTeens = "Fifteen";
                break;
            case '6':
                returnTeens = "Sixteen";
                break;
            case '7':
                returnTeens = "Seventeen";
                break;
            case '8':
                returnTeens = "Eighteen";
                break;
            case '9':
                returnTeens = "Nineteen";
                break;

        }
        return returnTeens;
    }
    public static string reverseString(string str)
    {
        char[] strArray = str.ToCharArray();
        Array.Reverse(strArray);
        return new string(strArray);
    }

}
