part of 'userdata_bloc.dart';

//like cubit
abstract class UserdataEvent extends Equatable {
  const UserdataEvent();
}

class LoadUserDataEvent extends UserdataEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
