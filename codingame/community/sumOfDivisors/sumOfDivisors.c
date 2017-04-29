#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main()
{
    unsigned long long x;
    scanf("%d", &x);
    unsigned long long y = x/2;
    unsigned long long sum = y;
    
    for (unsigned long long i = 1; i <= y; i++) {
        sum += (y/i) *(1+ (x/i));
        if ((x/i)%2==1 ) {
            sum += 1+ (y/i);
            }
        //printf("%d\n",sum);
    }

    printf("%llu\n",sum);

    return 0;
}