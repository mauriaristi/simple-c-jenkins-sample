#ifndef ASSERT_H

#define ASSERT_H

#include <stdlib.h>
#include <stdio.h>

#define ASSERT_PASS   0
#define ASSERT_FAIL   10

int assertResultInt(int result, int expected);

#endif