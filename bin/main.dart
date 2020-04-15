void main() {
  //bool - true or false
  bool visible;
  print(visible);

  //int - 정수, ~/: 몫 연산자
  int number = 17 ~/ 4;
  print(number);

  //double - 소수
  double pi = 3.14 / 2;
  print(pi);

  //String 문자열
  String name = "홍길동";
  print(name);

  //List - 리스트
  List ages = [10, 11, 12];
  print(ages[0]); 

  //Map - key:value
  Map person = {"name": "홍길동", "age": 20};
  print(person);

  // 다트의 타입추론
  // 한번 값이 할당되면 타입을 지정함(int), year변수에 int 외에 다른 타입을 지정할 수 없음
  var year = 1977;
  //year = "홍길동"; (x)
  print(year);

  // final, const로 선언된 값은 고정값. 
  // final은 클래스 선언 후 생성자를 통해 최초에 한번 값을 바꿀 수 있음.(final: runtime에 값이 대입)
  // const는 값 변경 불가. 선언시에 값 설정(const: compile 단계에서 값이 대입)
  final pi2 = 3.14;
  print(pi2);

  const pi3 = 3.14;
  print(pi3);
}