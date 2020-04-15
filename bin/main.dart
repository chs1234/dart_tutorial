const oneSecond = Duration(seconds: 1);
// ···
// Future<void> printWithDelay(String message) async {
//   print("기다리는 중....");
//   await Future.delayed(oneSecond);
//   print(message);
// }

// void main() {
//   printWithDelay("출력");
// }

Future<int> printWithDelay(String message) async {
  print("기다리는 중....");
  await Future.delayed(oneSecond);
  print(message);

  //1을 리턴해보도록 유도
  return 1;
}

void main() async {
  // int result = printWithDelay("출력!!"); //오류 발생

  // async, await을 지정해주어야함.
  int result = await printWithDelay("출력!!");
  print(result);
}