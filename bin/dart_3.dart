
// import 'interface_modifier.dart';
import 'sealed_modifier.dart';


void main(){

// Person person = Person();
// person.sayHello();
//
// Student student = Student();
// student.sayHello();

State state = Loading();
_printState(state);
state = Success('Success');
_printState(state);
state = Failed('Failed');
_printState(state);
state = NoInternet();
_printState(state);




}
void _printState(State state) {
  String appState = switch(state){
    Loading() => 'Loading',
    Success(data: String data) => 'Success $data',
    Failed(error: String error) => 'Failed $error',
    NoInternet() => 'No Internet',
    // _ => 'Unknown State'
  };

  print(appState);
//base class

// base class Worker extends Person{
//   @override
//   void sayHello(){
//     print('Hello Worker');
//   }
// }
}
//interface
//can't not extends  with outer library
//if abstract interface , can't build object of interface
// class Worker implements Person{
//   @override
//   void sayHello(){
//     print('Hello Worker');
//   }
// }