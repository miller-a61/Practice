#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main()
{
    int N;
    int fastest = 86400;
    int ttime;
    char output[10];
    
    scanf("%d", &N);
    for (int i = 0; i < N; i++) {
        char t[10];
        scanf("%s", t);

        char *hour = (char*) malloc(6);
        char *min = (char*) malloc(6);
        char *sec = (char*) malloc(6);
        
        strncpy(hour, t+0, 2);
        strncpy(min, t+3, 2);
        strncpy(sec, t+6,2);

        int hr = atoi(hour) * 3600;
        int mn = atoi(min) * 60;
        int sc = atoi(sec);

        ttime = hr + mn + sc;

        //printf("%d\n", ttime);
        
        if (ttime < fastest) {
            fastest = ttime;
            strncpy(output, t, 10);
            
        }
        
    }
    printf("%s\n", output);
    
    return 0;
}