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

void main() {
  PilotedCraft pilotedCraft = PilotedCraft('홍길동', DateTime.now());
  pilotedCraft.describe();
  pilotedCraft.describeCrew();

  // Orbiter orbiter = Orbiter('나로호', DateTime.now(), 100);
  // orbiter.describe(); // 부모클래스(SpaceCraft)의 메소드 사용가능

  // Spacecraft spacecraft = Orbiter('나로호', DateTime.now(), 100);
  // spacecraft.describe(); // 부모는 자식의 타입을 받을 수 있다. 재정의한 자식의 메소드가 호출됨.

  // 자식은 부모의 타입을 받을 수 없다.
  // Orbiter orbiter = Spacecraft("나로호", DateTime.now());
}