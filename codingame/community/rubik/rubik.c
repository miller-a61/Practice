#include <stdlib.h>
#include <stdio.h>
#include <string.h>
int main()
{
    int N;
    scanf("%d", &N);
    N = N>1?6*N*(N-2)+8:1;
    printf("%d\n",N);
    return 0;
}