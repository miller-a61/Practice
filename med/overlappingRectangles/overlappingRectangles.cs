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
        int[] numbers = line.Split(',').Select(int.Parse).ToArray();
        bool answer = false;

        if (numbers[0] <= numbers[4] && numbers[4] <= numbers[2] && numbers[3] <= numbers[5] && numbers[5] <= numbers[1])
            answer = true;
        if (numbers[0] <= numbers[4] && numbers[4] <= numbers[2] && numbers[3] <= numbers[7] && numbers[7] <= numbers[1] && !answer)
            answer = true;
        if (numbers[0] <= numbers[6] && numbers[6] <= numbers[2] && numbers[3] <= numbers[5] && numbers[5] <= numbers[1] && !answer)
            answer = true;
        if (numbers[0] <= numbers[6] && numbers[6] <= numbers[2] && numbers[3] <= numbers[7] && numbers[7] <= numbers[1] && !answer)
            answer = true;
        if (numbers[4] <= numbers[0] && numbers[2] <= numbers[6] && numbers[7] <= numbers[1] && numbers[3] <= numbers[5] && !answer)
            answer = true;

        Console.WriteLine(answer);
   
    }
}

