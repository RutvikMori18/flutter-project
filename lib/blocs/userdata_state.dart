part of 'userdata_bloc.dart';

//state class always has abstract class
//and its extends with Equatable
//state class holds the state of the ui and repository
abstract class UserdataState extends Equatable {
  const UserdataState();
}

//in our app there is 3 state

// //Intial
class UserdataInitial extends UserdataState {
  @override
  List<Object> get props => [];
}

//Loading
// class UserdataLoading extends UserdataState {
//   @override
//   List<Object> get props => [];
// }

//Loadded
class UserdataSuccess extends UserdataState {
  final List<UserDataModel> users;
  const UserdataSuccess(this.users);
  @override
  List<Object> get props => [users];
}

//Error
class UserdataError extends UserdataState {
  final String error;
  const UserdataError(this.error);
  @override
  List<Object> get props => [error];
}
