// [Functions]

// int add(int a, int b) {
//   return a + b;
// }

//반환 타입을 지정하지 않아도 됨. but, 코드가독성 및 유지보수를 위해 선언해주는 것이 좋음.
// add(int a, int b) {
//   return a + b;
// }

//피보나치수열
/**
 * n result
 * 1 1
 * 2 1
 * 3 2
 * 4 3
 */
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  // int result = add(1, 2);
  // print(result);

  // 1,1,2,3,5,8
  int result = fibonacci(4);
  print(result);
}