#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

int main()
{
    int lightX; // the X position of the light of power
    int lightY; // the Y position of the light of power
    int initialTX; // Thor's starting X position
    int initialTY; // Thor's starting Y position
    string ew;
    string ns;
    
    cin >> lightX >> lightY >> initialTX >> initialTY; cin.ignore();

    // game loop
    while (1) {
        int remainingTurns; // The remaining amount of turns Thor can move. Do not remove this line.
        cin >> remainingTurns; cin.ignore();
 
        if (initialTX < lightX) {
            ew = "E";
            initialTX = initialTX + 1;
        }else if (initialTX > lightX) {
            ew = "W";
            initialTX = initialTX - 1;
        }else
            ew = "";

        if (initialTY < lightY) {
            ns = "S";
            initialTY = initialTY + 1;
        }else if (initialTY > lightY) {
            ns = "N";
            initialTY = initialTY - 1;
        }else
            ns = "";
            
        cout << ns + ew << endl;
    }
}



 