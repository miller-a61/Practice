#include <Foundation/Foundation.h>

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main(int argc, const char * argv[]) {
    int surfaceN; // the number of points used to draw the surface of Mars.
    scanf("%d", &surfaceN);
    for (int i = 0; i < surfaceN; i++) {
        int landX; // X coordinate of a surface point. (0 to 6999)
        int landY; // Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
        scanf("%d%d", &landX, &landY);
    }

    // game loop
    while (1) {
        int X;
        int Y;
        int hSpeed; // the horizontal speed (in m/s), can be negative.
        int vSpeed; // the vertical speed (in m/s), can be negative.
        int fuel; // the quantity of remaining fuel in liters.
        int rotate; // the rotation angle in degrees (-90 to 90).
        int power; // the thrust power (0 to 4).
        scanf("%d%d%d%d%d%d%d", &X, &Y, &hSpeed, &vSpeed, &fuel, &rotate, &power);

        // Write an action using printf(). DON'T FORGET THE TRAILING NEWLINE \n
        // To debug: fprintf(stderr, [@"Debug messages\n" UTF8String]);


        if(vSpeed > -40) {
            printf([@"0 2\n" UTF8String]);
        }else{
            printf([@"0 4\n" UTF8String]);
            }
    }
}