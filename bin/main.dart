// [Class]

class Person {
  String name;
  int age;

  // default
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  Person(this.name, this.age);

  // default
  // Person.age(int age) {
  //   this.age = age;
  //   //this.name = "손님";
  // }

  Person.age(int age) : this("손님", age);

  void study() {
    print('$name($age) is studying code');
  }
}

void main() {
  Person person = Person("철수", 20); //인스턴스(객체) 생성
  Person person2 = Person("영희", 24); //인스턴스(객체) 생성

  person.study();  // 철수(20) is studying code
  person2.study(); // 영희(24) is studying code

  Person person3 = Person.age(23);
  person3.study(); // null(23) is studying code
}