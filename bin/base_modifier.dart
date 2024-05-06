// base => construct ,implement, extends, mixin, exhaustive
// can't use implements with outer Library but can use with inner library
// can use extends with outer library
// if extends or implements is used base, final, sealed and but not mixin
//




base class Person{
  void sayHello(){
    print('Hello');
  }

}
mixin Teacher {
  void sayHello(){
    print('Hello Teacher');
  }
}
base class Student extends Person with Teacher{
  @override
  void sayHello(){
    print('Hello Student');
  }
}