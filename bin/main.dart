//[Arrow Syntax]

void main() {
  List ages = [10, 11, 21];
  //var filteredAges = ages.where((age) => age > 10);
  //print(filteredAges); // expected: (11, 21)

  ages.where((age) => age > 10).forEach(print);
  // expected: 11, 21

  var flyByObjects = ['yourturn', 'hello', 'abc'];
  flyByObjects.where((name) => name.contains('turn')).forEach(print);
  // expected: 'yourturn'

}