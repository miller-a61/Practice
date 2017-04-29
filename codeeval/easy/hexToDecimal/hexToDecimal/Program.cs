using System;
using System.IO;
class hexToDecimal
{
    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                int value = Convert.ToInt32(line, 16);

                Console.WriteLine(value);
            }
        }
    }
}

/*HEX TO DECIMAL
CHALLENGE DESCRIPTION:


You will be given a hexadecimal (base 16) number. Convert it into decimal (base 10).

INPUT SAMPLE:

Your program should accept as its first argument a path to a filename. Each line in this file contains a hex number. You may assume that the hex number does not have the leading 'Ox'. Also all alpha characters (a through f) in the input will be in lowercase. E.g.

9f
11
OUTPUT SAMPLE:

Print out the equivalent decimal number. E.g.

159
17

    */