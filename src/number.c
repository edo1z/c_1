/* 階乗 */
int factorial(int num) {
  if (num < 0) return -1;
  if (num == 0) return 1;
  return num * factorial(num - 1);
}

/* フィボナッチ */
int fibo(int idx) {
  if (idx < 0) return 0;
  int val0 = 1;
  int val1 = 1;
  if (idx == 0 || idx == 1) {
    return 1;
  }
  for (int i = 2; i <= idx; i++) {
    int tmp = val1;
    val1 += val0;
    val0 = tmp;
  }
  return val1;
}
