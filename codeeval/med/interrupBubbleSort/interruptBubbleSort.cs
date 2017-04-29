using System;
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
        string arrString = line.Substring(0, line.IndexOf('|')-1);
        long iterations = Convert.ToInt64(line.Substring(line.IndexOf('|')+1));
        long[] numbers = arrString.Split(' ').Select(n => Convert.ToInt64(n)).ToArray();

        iterations = Math.Min(iterations, numbers.Length);

        for(int j = 1; j <= iterations; j++)
        {      
            for (int i = 0; i < numbers.Length-1; i++)
            {
                if(numbers[i] > numbers[i+1])
                {
                    long temp = numbers[i];
                    numbers[i] = numbers[i + 1];
                    numbers[i + 1] = temp;
                }
            }
        }
        
        arrString = string.Join(" ", numbers);
        
        Console.WriteLine(arrString);  

    }
}



