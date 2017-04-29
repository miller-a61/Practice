using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;

class Solution
{
    static void Main(string[] args)
    {
        
        string SLON = Console.ReadLine().Replace(',','.');
        string SLAT = Console.ReadLine().Replace(',','.');
        float LON = float.Parse(SLON);
        float LAT = float.Parse(SLAT);
        
        //Console.Error.WriteLine("lon {0}, lat {1}", LON, LAT);
        int N = int.Parse(Console.ReadLine());
        string[] defib = new string[N];
        double priorDistance = 999999999999999;
        string[] currentDefib = new string[6];
        
        string answer = "";
        
        for (int i = 0; i < N; i++)
        {
            string DEFIB = Console.ReadLine();
            defib[i] = DEFIB;
        }

        foreach(string fib in defib) {
         
            currentDefib = fib.Split(';');
            Console.Error.WriteLine(fib);
            
            string name = currentDefib[1];
            float defib_lon = float.Parse(currentDefib[4].Replace(',','.'));
            float defib_lat = float.Parse(currentDefib[5].Replace(',','.'));
            
            float x = defib_lon - LON;
            float y = defib_lat - LAT;
            
            //float u = defib_lon - LON;
            //double v = Math.Cos((defib_lat + LAT)/2);
            //float x = u * (float)v;
            Console.Error.WriteLine("x: {0}, y: {1}", x, y);
            
            double x2 = Math.Pow(x,2.0);
            double y2 = Math.Pow(y,2.0);
            double dist = Math.Sqrt(x2 + y2);
            Console.Error.WriteLine("x2: {0}, y2: {1}, dist: {2}", x2, y2, dist);            
            
            //float dist = Math.Sqrt(Math.Pow(x,2) + Math.Pow(y,2));
            
            //Console.Error.WriteLine("dist {0}, pdist {1}", dist, priorDistance);
            answer = (dist < priorDistance) ? name : answer;
            
            priorDistance = (dist < priorDistance) ? dist : priorDistance;
        
        }

        // Write an action using Console.WriteLine()
        // To debug: Console.Error.WriteLine("Debug messages...");

        Console.WriteLine(answer);
    }
}