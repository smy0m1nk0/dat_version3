interface class Person{
  void sayHello(){
    print('Hello');
  }

}
mixin Teacher {
  void sayHello(){
    print('Hello Teacher');
  }
}
class Student extends Person with Teacher{
  @override
  void sayHello(){
    print('Hello Student');
  }
}