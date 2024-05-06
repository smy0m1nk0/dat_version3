//Switch Expression
//Version 2.12.0 => NULL Safety

void main() {
  //Dart Version 2.12.0
  //need Break statement
  String grade = 'B';
  switch (grade) {
    case 'A':
      print('Excellent grade of A');
      break;

    case 'B':
      print('Very Good!');
      break;

    case 'C':
      print('Good enough. But work hard');
      break;

    case 'F':
      print('You have failed');
      break;

    default:
      print('Invalid grade');
  }

  //Dart Version 3
  //No need Break statement
  String grade2 = 'B';
  String str = switch (grade2) {
    'A' => 'Excellent grade of A',
    'B' => 'Very Good!',
    'C' => 'Good enough. But work hard',
    'F' => 'You have failed',
    _ => 'Invalid grade'
  };
  print(str);
}
