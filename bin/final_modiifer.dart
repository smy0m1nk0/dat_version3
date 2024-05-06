// final modifier
// final class can't be extended or implemented
//can't use final with mixin, implements, extends, exhaustive outside library
//abstract final class can't be created

final class Person{
  void sayHello(){
    print('Hello');
  }

}
mixin Teacher {
  void sayHello(){
    print('Hello Teacher');
  }
}
final class Student extends Person with Teacher{
  @override
  void sayHello(){
    print('Hello Student');
  }
}