#ifdef __cplusplus
extern "C" {
  extern int factorial(int num);
  extern int fibo(int num);
  extern int gcd(int a, int b);
}
#else
  int factorial(int num);
  int fibo(int num);
  int gcd(int a, int b);
#endif
