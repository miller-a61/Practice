using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
class longestLines
{
    static void Main(string[] args)
    {
        List<string> fileLines = new List<string>();

        using (StreamReader sr = File.OpenText(args[0]))
        {
            string line;
            int numResults;
            int i;

            while ((line = sr.ReadLine()) != null)
            {
                fileLines.Add(line);
            }

            numResults = int.Parse(fileLines[0]);

            fileLines.RemoveAt(0);

            var fileSorted = from l in fileLines
                             orderby l.Length descending
                             select l;

            for(i = 0; i < numResults; i++)
            {
                Console.WriteLine(fileSorted.ElementAt(i));
            }
            
        }
    }
}
