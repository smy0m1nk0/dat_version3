
import 'base_modifier.dart';

void main(){

Person person = Person();
person.sayHello();

Student student = Student();
student.sayHello();

}
//base class

base class Worker extends Person{
  @override
  void sayHello(){
    print('Hello Worker');
  }
}