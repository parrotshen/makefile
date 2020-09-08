#include <stdio.h>
#include <math.h>
#include "arith.h"

int main(int argc, char *argv[])
{
    int a = 100;
    int b = 5;

    printf("%d + %d = %d\n", a, b, add(a, b));
    printf("%d - %d = %d\n", a, b, sub(a, b));
    printf("%d * %d = %d\n", a, b, mul(a, b));
    printf("%d / %d = %d\n", a, b, div(a, b));

    printf("\nsqrt(2) = %f\n\n", sqrt(2));

    return 0;
}

