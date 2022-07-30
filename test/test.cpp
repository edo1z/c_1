#include <CppUTest/CommandLineTestRunner.h>

#include "factorial.h"

int main(int ac, char** av)
{
    return CommandLineTestRunner::RunAllTests(ac, av);
}

TEST_GROUP(NumberTestGroup){};

TEST(NumberTestGroup, Factorial) {
  CHECK_EQUAL(120, factorial(5));
}
