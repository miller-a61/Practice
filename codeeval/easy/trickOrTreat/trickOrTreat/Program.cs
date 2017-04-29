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


/*TRICK OR TREAT
CHALLENGE DESCRIPTION:

Everyone knows what Halloween is and how children love it. Children in costumes travel from house to house asking for treats with a phrase "Trick or treat". After that, they divide the treats equally among all. This year, they collected tons of candies, and need your help to share everything equally. 
You know that children receive different number of candies depending on their costume: vampire gets 3 candies from one house, zombie – 4 candies, and witch – 5 candies. 
That is, three children in three different costumes get 3+4+5=12 candies from one house.

INPUT SAMPLE:

The first argument is a path to a file. Each line includes a test case with number of vampires, zombies, witches, and houses that they visited.

For example:



1
2
Vampires: 1, Zombies: 1, Witches: 1, Houses: 1
Vampires: 3, Zombies: 2, Witches: 1, Houses: 10
OUTPUT SAMPLE:

You need to print number of candies that each child will get. If the number is not integer, round it to the lower: for example, if the resulting number is 13.666, round it to 13.

For example:



1
2
4
36
CONSTRAINTS:

Number of vampires, zombies, witches, and houses can be from 0 to 100.
If the final number of candies is not integer, round it to the lower.
The number of test cases is 40.*/
