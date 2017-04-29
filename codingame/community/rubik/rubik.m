#include <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    int N;
    scanf("%d", &N);
    if (N > 1) {
        N = N * 6 * (N - 2) + 8;
    }
    printf("%d\n",N );
}