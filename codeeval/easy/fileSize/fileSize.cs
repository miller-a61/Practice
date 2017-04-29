using System;
using System.IO;
class sizeOfFile
{
    //static void Main()
    static void Main(string[] args)
    {
        long size = new FileInfo(args[0]).Length;

        Console.WriteLine(size);
    }
}
