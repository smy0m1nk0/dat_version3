// c# kotlin
// enum SealedModifier
// state checking

sealed class State{}

class Loading extends State{}
class Success extends State{
  final String data;
  Success(this.data);
}
class Failed extends State{
  final String error;
  Failed(this.error);
}
class NoInternet extends State{}
