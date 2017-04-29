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
class Player
{
    static void Main(string[] args)
    {
        string[] inputs;
        inputs = Console.ReadLine().Split(' ');
        int nbFloors = int.Parse(inputs[0]); // number of floors
        int width = int.Parse(inputs[1]); // width of the area
        int nbRounds = int.Parse(inputs[2]); // maximum number of rounds
        int exitFloor = int.Parse(inputs[3]); // floor on which the exit is found
        int exitPos = int.Parse(inputs[4]); // position of the exit on its floor
        int nbTotalClones = int.Parse(inputs[5]); // number of generated clones
        int nbAdditionalElevators = int.Parse(inputs[6]); // ignore (always zero)
        int nbElevators = int.Parse(inputs[7]); // number of elevators
        
        int currentFloor = 0;
        string currentDir = "Right";
        int currentTurn = 1;
        int targetDest = -1;
        bool currentFloorBlocked = false;
        int[] elevatorArr = new int[nbElevators];
        
        for (int i = 0; i < nbElevators; i++)
        {
            inputs = Console.ReadLine().Split(' ');
            int elevatorFloor = int.Parse(inputs[0]); // floor on which this elevator is found
            int elevatorPos = int.Parse(inputs[1]); // position of the elevator on its floor
            elevatorArr[elevatorFloor] = elevatorPos;
        }

        // game loop
        while (true)
        {
            inputs = Console.ReadLine().Split(' ');
            int cloneFloor = int.Parse(inputs[0]); // floor of the leading clone
            int clonePos = int.Parse(inputs[1]); // position of the leading clone on its floor
            string direction = inputs[2]; // direction of the leading clone: LEFT or RIGHT

            if (currentFloor < cloneFloor) {
                currentFloor = cloneFloor;
                currentFloorBlocked = false;
            }
            
            if (currentFloor == exitFloor) 
                targetDest = exitPos;
            else
                targetDest = elevatorArr[currentFloor];
                
            if (currentTurn == 1)
                Console.WriteLine("WAIT");
            else if (targetDest < clonePos && currentDir == "Right" && currentFloorBlocked == false) {
                Console.WriteLine("BLOCK");
                currentDir = "Left";
                currentFloorBlocked = true;
            } else if  (targetDest > clonePos && currentDir == "Left" && currentFloorBlocked == false) {
                Console.WriteLine("BLOCK");
                currentDir = "Right";
                currentFloorBlocked = true;
            } else
                Console.WriteLine("WAIT");
            
            currentTurn++;

            // Write an action using Console.WriteLine()
            // To debug: Console.Error.WriteLine("Debug messages...");

            //Console.WriteLine("WAIT"); // action: WAIT or BLOCK
        }
    }
}