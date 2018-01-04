using System;
using System.IO;

namespace Csharp_practice
{
    class Program
    {
        static void Main(string[] args)
        {

            var content = File.ReadAllText(@"d:\temp\lorem_ipsum.txt");
            var words = content.Split(" ");

            Console.WriteLine(words.Length);

            var longestWord = "";

            foreach(var word in words)
            {
                if (word.Length > longestWord.Length)
                    longestWord = word;
            }

            Console.WriteLine(longestWord);
        }
    }
}