//Records Type
//Dart Version 3
// SameWith Kotlin Data Class , not CopyWith

void main() {
  var person = Person(name: 'John', age: 30, address: 'New York');
  var person2 = Person(name: 'John', age: 30, address: 'New York');
  print(person == person2); //false because person and person2 are different instances or memory locations
  // If Override == and hashCode in Person class, it will return true

  print(person.name);
  print(person.age);
  print(person.address);

  //Map person
  Map<String,dynamic> personMap = {
    'name': 'John',
    'age': 30,
    'address': 'New York'
  };

  print(personMap['name']);

  // Record person
  //Immutable
  //agregrate data
  final p = (name:'John', age: 30, address: 'New York');

  //Type
  final ({String name , int age, String address}) p2 = (name:'John', age: 30, address: 'New York');
  print(p.name);
  print(p.age);
  print(p.address);
  // p.name = 'Doe'; //Error: The setter 'name' isn't defined for the class 'Object'.


  // person = Person.fromMap(personMap); //Error: The final variable 'person' can only be set once.

  // person.name = 'Doe'; //Error: The setter 'name' isn't defined for the class 'Person'.

}

class Person {
  final String name;
  final int age;
  final String address;

  Person({required this.name,required this.age,required this.address,});

  @override
  String toString() {
    return 'Person{name: $name, age: $age, address: $address}';
  }

  @override
  int get hashCode {
    return name.hashCode ^ age.hashCode ^ address.hashCode;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              age == other.age &&
              address == other.address;


}