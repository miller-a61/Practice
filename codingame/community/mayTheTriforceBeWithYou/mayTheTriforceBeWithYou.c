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
    scanf("%d", &N);
    int numspaces;
    int numstars;
    //char answer[50] = "";
    //printf("%d\n",N);
    for (int i = 0; i < N; i++) {
        char answer[50] = "";
           if (i == 0) {
                numspaces = (2 * N) - i - 2;
                strcat(answer, ".");
           } else {
               numspaces = (2 * N) - i - 1;
           }
           
           for (int j = 0; j < numspaces; j++){
               strcat(answer, " ");
           }
           numstars = (2 * i) + 1;
           
           for (int k = 0; k < numstars; k++) {
               strcat(answer, "*");
           }
        //printf("%d %d\n",i, N);
        printf("%s\n",answer);
    }

    for (int i = 0; i < N; i++) {
        char answer[50] = "";

            numspaces = N - i - 1;
           for (int j = 0; j < numspaces; j++){
               strcat(answer, " ");
           }
           numstars = (2 * i) + 1;
           
           for (int k = 0; k < numstars; k++) {
               strcat(answer, "*");
           }
            numspaces = (2 * N)  - (2 * i ) - 1;
           for (int j = 0; j < numspaces; j++){
               strcat(answer, " ");
           }
           numstars = (2 * i) + 1;
           
           for (int k = 0; k < numstars; k++) {
               strcat(answer, "*");
           }
        //printf("%d %d\n",i, N);
        printf("%s\n",answer);
    }


    return 0;
}