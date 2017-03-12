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
            char output;
            program a = new program();

            while ((line = sr.ReadLine()) != null)
            {
                output = a.findAnswer(line);

                Console.WriteLine(output);
            }
        }
        Console.Read();
    }

    public char findAnswer(string line)
    {
        int i = 0;
        int forward, backward;

        while (i < line.Length)
        {
            forward = line.Substring(i + 1).IndexOf(line[i]);
            backward = (i == 0) ? -1 : line.Substring(0, i).IndexOf(line[i]);

            if (forward == -1 && backward == -1) return line[i];

            i++;
        }
        return '0';
    }
}
