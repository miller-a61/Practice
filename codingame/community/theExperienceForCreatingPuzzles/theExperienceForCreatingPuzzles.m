#include <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    int lvl;
    scanf("%d", &lvl);
    int needed;
    scanf("%d", &needed);
    int xp;
    scanf("%d", &xp);
    xp = xp * 300;
    
    while (xp >= needed) {
        lvl = lvl + 1;
        xp = xp - needed;
        needed = (lvl * sqrt(lvl) * 10);
        
    }
    
    printf("%d\n",lvl);
    printf("%d\n", needed - xp);
}
