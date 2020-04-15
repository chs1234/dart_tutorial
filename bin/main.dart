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

const oneSecond = Duration(seconds: 1);
// ···
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
  for (var object in objects) {
    await Future.delayed(oneSecond);
    yield '${craft.name} flies by $object';
  }
}

void main() async {
  Spacecraft spacecraft = Spacecraft('spaceCraft', DateTime.now());
  Stream<String> result = report(spacecraft, ['abc', 'def', 'ggg']);
  
  /**
   * 방법 1.
   * spaceCraft flies by abc
   * spaceCraft flies by def
   * spaceCraft flies by ggg
   * 
   */
  // await for(String s in result) {
  //   print(s);
  // }

  /** 
   * 방법 2.(비동기)
   * "코드종료"
   * spaceCraft flies by abc
   * spaceCraft flies by def
   * spaceCraft flies by ggg
  */ 
  // result.listen((s) {
  //   print(s);
  // });

  print("코드종료");
}