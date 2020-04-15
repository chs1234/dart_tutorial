import 'dart:io';

void main() async{
  var flybyObjects = ['abc', 'def'];
  try {
    for (var object in flybyObjects) {
        var description = await File('$object.txt').readAsString();
        print(description);
      }
    } on IOException catch (e) {
      print('Could not describe object: $e');
    } catch(e) {
      print("모든 에러!!");
    } finally {
      flybyObjects.clear();
  }
}