#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main()
{
    int lightX; // the X position of the light of power
    int lightY; // the Y position of the light of power
    int initialTX; // Thor's starting X position
    int initialTY; // Thor's starting Y position
    scanf("%d%d%d%d", &lightX, &lightY, &initialTX, &initialTY);

    // game loop
    while (1) {
        int remainingTurns; // The remaining amount of turns Thor can move. Do not remove this line.
        scanf("%d", &remainingTurns);
        char dir[2] = "";
        if (initialTY < lightY) {
            strcat(dir,"S");
            initialTY = initialTY + 1;
        } else if (initialTY > lightY) {
            strcat(dir,"N");
            initialTY - initialTY - 1;
        }       
        if (initialTX < lightX) {
            strcat(dir,"E");
            initialTX = initialTX + 1;
        } else if (initialTX > lightX) {
            strcat(dir,"W");
            initialTX - initialTX - 1;
        }

        printf("%s\n", dir);
    }

    return 0;
}
