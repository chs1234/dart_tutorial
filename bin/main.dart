class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
    name = name + "님";
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  int get launchYear =>
      launchDate?.year; // read-only non-final property
      // ?. => null이 아닌 경우에만 반환함. null인 경우 반환하지 않는다.

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

void main() {
  Spacecraft spacecraft = Spacecraft("나로호", DateTime.now());
  //print(spacecraft); //Instance of 'Spacecraft'
  //print("이름: ${spacecraft.name}, 발사일: ${spacecraft.launchDate}");
  
  //spacecraft.launchYear = 30; // 값 설정 불가, int "get"
  print(spacecraft.launchYear);

  spacecraft.describe();
}