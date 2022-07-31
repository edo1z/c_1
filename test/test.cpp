#include <CppUTest/CommandLineTestRunner.h>

#include "number.h"

int main(int ac, char** av) {
    return CommandLineTestRunner::RunAllTests(ac, av);
}

TEST_GROUP(NumberTestGroup){};

TEST(NumberTestGroup, Factorial) {
  CHECK_EQUAL(-1, factorial(-100));
  CHECK_EQUAL(1, factorial(0));
  CHECK_EQUAL(6, factorial(3));
  CHECK_EQUAL(120, factorial(5));
  CHECK_EQUAL(5040, factorial(7));
  CHECK_EQUAL(3628800, factorial(10));
}

TEST(NumberTestGroup, Fibonacci) {
  CHECK_EQUAL(0, fibo(-10));
  CHECK_EQUAL(1, fibo(0));
  CHECK_EQUAL(1, fibo(1));
  CHECK_EQUAL(3, fibo(3));
  CHECK_EQUAL(21, fibo(7));
  CHECK_EQUAL(55, fibo(9));
}
