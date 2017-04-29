using System;
using System.IO;
class program
{
    public const int v_candy = 3;
    public const int z_candy = 4;
    public const int w_candy = 5;

    static void Main(string[] args)
    {
        //using (StreamReader sr = new StreamReader("test_file.txt"))
        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            while ((line = sr.ReadLine()) != null)
            {
                string[] things = line.Split(',');
                string[] vampire = things[0].Split(':');
                string[] zombie = things[1].Split(':');
                string[] witch = things[2].Split(':');
                string[] house = things[3].Split(':');

                int v_number = Int32.Parse(vampire[1]);
                int z_number = Int32.Parse(zombie[1]);
                int w_number = Int32.Parse(witch[1]);
                int h_number = Int32.Parse(house[1]);

                int kids = v_number + z_number + w_number;

                int totalCandy = (v_candy * v_number + z_candy * z_number + w_candy * w_number) * h_number;

                double candyPerKid = totalCandy / kids;

                candyPerKid = Math.Floor(candyPerKid);

                Console.WriteLine(candyPerKid);
            }
        }
        Console.Read();
    }
}
