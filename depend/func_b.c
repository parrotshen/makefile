#include <stdio.h>
#include "common.h"
#include "func_b.h"
#include "func_c.h"

int func_b(void)
{
    printf("%s\n", __FILE__);

    func_c();

    return 0;
}
