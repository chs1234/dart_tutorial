void main() {
  // [Control flow Statements]

  // default
  // for (int month = 1; month <= 12; month++) {
  //   print(month);
  // }

  List ages = [10, 11, 12];
  for (var age in ages) {
    print(age);
  }

  int year = 2010;
  while (year < 2016) {
    year += 1;
    print(year);
  }
}