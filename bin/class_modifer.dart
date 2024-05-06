//Class Modifier
//class
//abstract
//mixin
//base
//final
//interface
//sealed

//Construct ,Implement, Extends, Mixin, Exhaustive

//Dart Programming Language is Single Inheritance Language
//Use Mixin for multiple inheritance

class Person{
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
  void sayHello(){
    print('Hello Student');
  }
}