// [Mixins]

class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
      launchDate?.year; // read-only non-final property

  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  num altitude; //num은 int, double의 부모클래스, 모두 수용가능
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate); //부모의 생성자 호출

  @override
  void describe() {
    print("자식의 정보!!!");
    super.describe();
    print("부모의 describe()를 재정의함! altitude: $altitude");
  }
}

class Piloted {
  int astronauts = 1;
  // **Mixins로 정의된 클래스는 생성자를 만들 수 없다.
  //Piloted() {}
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String name, DateTime launchDate) : super(name, launchDate);
}

class MockSpaceship implements Spacecraft {
  @override
  DateTime launchDate;

  @override
  String name;

  // 생성자 추가
  MockSpaceship(this.launchDate, this.name);

  @override
  void describe() {
    // TODO: implement describe
  }

  @override
  // TODO: implement launchYear
  int get launchYear => null;

}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}

class Unit extends Describable {
  @override
  void describe() {
    print('unit Class override');
  }
}

class Animal implements Describable {
  @override
  void describe() {
    print("describe()");
  }

  @override
  void describeWithEmphasis() {
    print("describeWithEmphasis()");
  }

}

void main() {
    // MockSpaceship mockSpaceship = MockSpaceship(DateTime.now(), "나로호");
    // print(mockSpaceship.name); //null

    // Unit unit = Unit();
    // unit.describe();
    // unit.describeWithEmphasis();

    Animal animal = Animal();
    animal.describe();
    animal.describeWithEmphasis();
}