#include <Foundation/Foundation.h>

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main(int argc, const char * argv[]) {
    unsigned long long x;
    scanf("%d", &x);

    unsigned long long y = x/2;
    unsigned long long z = y;
    unsigned long long i = 1;
    while ( i <= y ) {
        z = z + y/i * (1+ x/i);
        if (x/i % 2 == 1) {
            z = z + 1 + y/i;
        }
        
        i = i + 1;
    }

    printf("%llu\n",z);
}