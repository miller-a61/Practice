import java.util.*;
import java.io.*;
import java.math.*;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
class Player {

    public static void main(String args[]) {
        Scanner in = new Scanner(System.in);
        int nbFloors = in.nextInt(); // number of floors
        int width = in.nextInt(); // width of the area
        int nbRounds = in.nextInt(); // maximum number of rounds
        int exitFloor = in.nextInt(); // floor on which the exit is found
        int exitPos = in.nextInt(); // position of the exit on its floor
        int nbTotalClones = in.nextInt(); // number of generated clones
        int nbAdditionalElevators = in.nextInt(); // ignore (always zero)
        int nbElevators = in.nextInt(); // number of elevators
        
        int currentFloor = 0;
        String currentDir = "Right";
        int currentTurn = 1;
        int targetDest = -1;
        boolean currentFloorBlocked = false;
        int[] elevatorArr = new int[nbElevators];
        
        for (int i = 0; i < nbElevators; i++) {
            int elevatorFloor = in.nextInt(); // floor on which this elevator is found
            int elevatorPos = in.nextInt(); // position of the elevator on its floor
            System.err.println(elevatorFloor);
            elevatorArr[elevatorFloor] = elevatorPos;
        }

        // game loop
        while (true) {
            int cloneFloor = in.nextInt(); // floor of the leading clone
            int clonePos = in.nextInt(); // position of the leading clone on its floor
            String direction = in.next(); // direction of the leading clone: LEFT or RIGHT
            
            if (currentFloor < cloneFloor) {
                currentFloor = cloneFloor;
                currentFloorBlocked = false;
            }
            
            if (currentFloor == exitFloor)
                targetDest = exitPos;
            else
                targetDest = elevatorArr[currentFloor];
            
            System.err.print("----");
            
            if (currentTurn == 1)
                System.out.println("WAIT");
            else if (targetDest < clonePos && currentDir == "Right" && currentFloorBlocked == false) {
                System.out.println("BLOCK");
                currentDir = "Left";
                currentFloorBlocked = true;                
            } else if (targetDest > clonePos && currentDir == "Left" && currentFloorBlocked == false) {
                System.out.println("BLOCK");
                currentDir = "Right";
                currentFloorBlocked = true;
            } else
                System.out.println("WAIT");

            currentTurn++;
            System.err.println(currentTurn);
        }
    }
}