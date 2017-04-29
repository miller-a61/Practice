using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
class Solution
{
    static void Main(string[] args)
    {
        Dictionary<string, string> mimeTypes =
            new Dictionary<string, string>();
        string to_find, answer;
            
        int N = int.Parse(Console.ReadLine()); // Number of elements which make up the association table.
        int Q = int.Parse(Console.ReadLine()); // Number Q of file names to be analyzed.
        string[] fileName = new string[Q];
        
        for (int i = 0; i < N; i++)
        {
            string[] inputs = Console.ReadLine().Split(' ');
            string EXT = inputs[0]; // file extension
            string MT = inputs[1]; // MIME type.
            Console.Error.WriteLine("ext {0}, mt {1}",EXT, MT);
            mimeTypes.Add(EXT.ToLower(), MT);
        }
        for (int i = 0; i < Q; i++)
        {
            string FNAME = Console.ReadLine();
            fileName[i] = FNAME.ToLower();
            // One file name per line.
        }

        foreach(string file in fileName) {
            
            to_find = "";
            
            if (file.IndexOf(".") != -1 
                && file[file.Length -1] != '.'){
                 
                string[] parts = file.Split('.');  
                
                if (parts.Length >= 1) {
                    
                    to_find = parts[parts.Length - 1];
                    }
                
            }
            
            if (mimeTypes.ContainsKey(to_find)) {
                
                answer = mimeTypes[to_find];
                Console.WriteLine("{0}",answer);
            }else{
                Console.WriteLine("UNKNOWN");
            }
        }
        

    }
}