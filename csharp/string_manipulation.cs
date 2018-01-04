using System;
using System.Linq;

namespace Csharp_practice
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
             Write a program and ask the user to enter a few numbers separated
             by a hyphen. Work out if the numbers are consecutive, either up or down
             and display the message "Consecutive" if they are and "Not Consecutive" 
             if they are not
            */

            
            Console.WriteLine("Enter a string of numbers separated by hyphens: ");
            var inputNum = Console.ReadLine().Split('-');

            var numbers = Array.ConvertAll(inputNum, x => int.Parse(x));

            var sorted = new int[numbers.Length];

            Array.Copy(numbers, sorted, numbers.Length);

            Array.Sort(sorted);

            var reversed = new int[numbers.Length];

            Array.Copy(sorted, reversed, numbers.Length);

            Array.Reverse(reversed);

            var sortedUp = sorted.Distinct();

            var sortedDown = reversed.Distinct();

            var matched = Enumerable.SequenceEqual(numbers, sortedUp) || Enumerable.SequenceEqual(numbers, sortedDown);

            var output = matched ? "Consecutive" : "Not Consecutive";

            Console.WriteLine(output);
            

            /*
             Write a program and ask the user to enter a few number separated by a hyphen.
             If the user presses enter without supplying an input, exit immediately; otherwise
             check to see if there are duplicates if so display duplicate on the console.
            */

            
            Console.WriteLine("Enter a string of numbers separated by hyphens: ");
            var input = Console.ReadLine().Split('-').ToList();

            if (input.Count > 0)
            {
                if(!Enumerable.SequenceEqual(input, input.Distinct()))
                {
                    Console.WriteLine("Duplicates");
                }

            }
            

            /*
             Write a program and ask the user to enter a time value in the 24-hour format.
             A valid time is between 00:00 and 23:59, if the time is valid display "OK", if it 
             is not valid or the user doesn't supply input display "Invalid Time"
            */

            
            Console.WriteLine("Enter a time in 24 hour format: ");
            var inTime = Console.ReadLine();

            try
            {
                var timeSpan = TimeSpan.Parse(inTime);
                Console.WriteLine("OK");
            }
            catch
            {
                Console.WriteLine("Invalid Time");
            }
            

            /*
             Write a program and ask the user to enter a few words separated
             by a space. Use the words to create a variable name with PascalCase

            */

            
            Console.WriteLine("Enter a string of words separated by spaces: ");
            var words = Console.ReadLine().Split(' ').ToList();

            var result = "";

            foreach(var word in words)
            {
                result += word.Substring(0, 1).ToUpper()
                            + word.Substring(1).ToLower();
            }

            Console.WriteLine(result);
            

            /*
             Write a program and ask the user to enter an English word. Count the
             number of vowels and display the result on the console
            */

            Console.WriteLine("Enter a word: ");
            var inWord = Console.ReadLine().ToLower();

            var vowelCount = 0;

            foreach(var letter in inWord)
            {
                if (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u')
                    vowelCount++;
             }

            Console.WriteLine(vowelCount);

        }
    }
}
